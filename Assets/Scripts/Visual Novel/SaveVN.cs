using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using InkFungus;
using Fungus;


/// <summary>
/// Handles the All of Us save system; stores story variables in Fungus
/// flowchart global variables, then sends the variables'
/// values to Ink on scene load.
/// </summary>
public class SaveVN : MonoBehaviour
{
    // After switching to Ink, this holder isn't super necessary because we
    // no longer search for active Fungus blocks.
    [Tooltip("Parent GameObject for all flowcharts in the scene. " +
        "Any flowchart not a child of this won't be considered for saving.")]
    public GameObject flowchartHolder;
    [Tooltip("Ink-Fungus narrative director for this scene.")]
    public NarrativeDirector narrativeDirector;

    // The cache knot variables help with some null edge cases when saving.
    private bool firstCacheUpdate = false;
    private static string cachedKnot;

    /// <summary>
    /// A flowchart that holds data for the save point in the visual novel.
    /// Other data can be stored there as well.
    /// Currently must be named "Variables Flowchart," but we could 
    /// make the field public later if needed.
    /// </summary>
    Flowchart variablesFlowchart;

    // Shorthand references to the saved info
    string fcSavedFlowchartName { get {
            return variablesFlowchart.GetStringVariable("savedFlowchartName");
        } }
    string fcSavedKnot { get {
            return variablesFlowchart.GetStringVariable("savedKnot");
        } }

    void Awake() {
        if (cachedKnot == null)
            cachedKnot = "intro";

        // Make sure we find the Variables Flowchart before trying to
        // read from it.
        variablesFlowchart = flowchartHolder.transform.
            Find("Variables Flowchart").GetComponent<Flowchart>();
        if (variablesFlowchart == null) {
            Debug.LogError("Couldn't find variables flowchart");
            return;
        }
        // Send Fungus variables to Ink or else Ink will try to overwrite the Fungus variables.
        // Might not be totally necessary.
        FindObjectOfType<NarrativeDirector>().OnVariablesChanged(variablesFlowchart);
    }

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(LoadingSavedData());
    }

    /// <summary>
    /// Coroutine to load the saved data from Variables Flowchart and load a
    /// point in the story based on what was saved.
    /// </summary>
    IEnumerator LoadingSavedData() {
        // Wait for the flowchart to initialize
        yield return new WaitForEndOfFrame();

        // check position in visual novel
        // For Ink, we no longer need to really do anything here
        if (fcSavedKnot != "") {
            // data has been saved
            Debug.Log("savedKnot on load: " + variablesFlowchart.GetStringVariable("savedKnot"));
        } else {
            // no data saved
            // Debug.Log(fcSavedFlowchartName);
            // do nothing?
            Debug.Log("No value for savedKnot found.");
        }
        variablesFlowchart.ExecuteBlock("On Variables Loaded");
    }

    /// <summary>
    /// Sets the data stored in Variables Flowchart to the arguments.
    /// </summary>
    public void SetSavedData(string savedFlowchartName, string savedKnot) {
        variablesFlowchart.SetStringVariable("savedFlowchartName", savedFlowchartName);
        variablesFlowchart.SetStringVariable("savedKnot", savedKnot);
        FindObjectOfType<NarrativeDirector>().OnVariablesChanged(variablesFlowchart);
        Debug.Log("savedKnot on save: " + variablesFlowchart.GetStringVariable("savedKnot"));
    }

    /// <summary>
    /// Clear saved data. Useful when changing scenes after finishing quests.
    /// </summary>
    public void ClearSavedData() {
        SetSavedData("", "");
    }

    /// <summary>
    /// Saves the visual novel info before loading scene sceneName
    /// </summary>
    /// <param name="sceneName">The scene to load.</param>
    public void SaveAndLoadScene(string sceneName) {
        SaveInfo();
        SceneManager.LoadScene(sceneName);
    }

    /// <summary>
    /// Updates the cached knot to the current path.
    /// </summary>
    public void UpdateCachedKnot() {
        if (firstCacheUpdate) {
            cachedKnot = narrativeDirector.story.state.currentPathString;
            Debug.Log("Updated cachedKnot to: " + cachedKnot);
        } else {
            firstCacheUpdate = true;
        }
    }

    /// <summary>
    /// Save the flowchart containing the active story info and the
    /// current knot in the Ink file.
    /// </summary>
    void SaveInfo() {
        // After switching to Ink, I think we only need one flowchart FOR NOW
        string savedFlowchartName = "Variables Flowchart";
        string savedKnot = narrativeDirector.story.state.currentPathString;

        // Edge case of clicking back button while on the last line of dialogue
        if (savedKnot == null) {
            savedKnot = cachedKnot;
        } else {
            UpdateCachedKnot();
        }

        SetSavedData(savedFlowchartName, savedKnot);
    }
}
