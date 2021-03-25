using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using InkFungus;
using Fungus;

public class SaveVN : MonoBehaviour
{
    [Tooltip("Parent GameObject for all flowcharts in the scene. " +
        "Any flowchart not a child of this won't be considered for saving.")]
    public GameObject flowchartHolder;
    [Tooltip("Ink-Fungus narrative director for this scene.")]
    public NarrativeDirector narrativeDirector;

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
        FindObjectOfType<NarrativeDirector>().OnVariablesChanged(variablesFlowchart);
    }

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(LoadingSavedData());
    }

    IEnumerator LoadingSavedData() {
        yield return new WaitForEndOfFrame();
        // check position in visual novel

        if (fcSavedKnot != "") {
            // data has been saved
            // before, we used to have to do stuff here, but not for ink
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
    /// Save the active flowchart, block, and command index to Variables
    /// Flowchart for retrieval earlier. Currently stores one active block,
    /// but functionality may be added later to support multiple.
    /// </summary>
    void SaveInfo() {
        string savedFlowchartName = "Variables Flowchart"; // FOR NOW
        string savedKnot = narrativeDirector.story.state.currentPathString;
        if (savedKnot == null) {
            savedKnot = cachedKnot;
        } else {
            UpdateCachedKnot();
        }
        SetSavedData(savedFlowchartName, savedKnot);
    }
}
