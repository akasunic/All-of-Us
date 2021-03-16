using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Fungus;

public class SaveVN : MonoBehaviour
{
    [Tooltip("Parent GameObject for all flowcharts in the scene. " +
        "Any flowchart not a child of this won't be considered for saving.")]
    public GameObject flowchartHolder;

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
    string fcSavedBlockName { get {
            return variablesFlowchart.GetStringVariable("savedBlockName");
        } }
    int fcSavedCommandIndex { get {
            return variablesFlowchart.GetIntegerVariable("savedCommandIndex");
        } }

    void Awake() {
        // Make sure we find the Variables Flowchart before trying to
        // read from it.
        variablesFlowchart = flowchartHolder.transform.
            Find("Variables Flowchart").GetComponent<Flowchart>();
        if (variablesFlowchart == null) {
            Debug.LogError("Couldn't find variables flowchart");
            return;
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(LoadingSavedData());
    }

    IEnumerator LoadingSavedData() {
        yield return new WaitForEndOfFrame();
        // check position in visual novel
        if (fcSavedFlowchartName != "") {
            // data has been saved. load position
            Flowchart savedFC = GameObject.Find(fcSavedFlowchartName).
                GetComponent<Flowchart>();
            Block savedBlock = savedFC.FindBlock(fcSavedBlockName);
            savedFC.ExecuteBlock(savedBlock, fcSavedCommandIndex);
        } else {
            // no data saved
            // Debug.Log(fcSavedFlowchartName);
            // do nothing?
        }
    }

    /// <summary>
    /// Sets the data stored in Variables Flowchart to the arguments.
    /// </summary>
    public void SetSavedData(string savedFlowchartName, string savedBlockName,
        int savedCommandIndex) {
        variablesFlowchart.SetStringVariable("savedFlowchartName", savedFlowchartName);
        variablesFlowchart.SetStringVariable("savedBlockName", savedBlockName);
        variablesFlowchart.SetIntegerVariable("savedCommandIndex", savedCommandIndex);
    }

    /// <summary>
    /// Clear saved data. Useful when changing scenes after finishing quests.
    /// </summary>
    public void ClearSavedData() {
        SetSavedData("", "", -1);
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
    /// Save the active flowchart, block, and command index to Variables
    /// Flowchart for retrieval earlier. Currently stores one active block,
    /// but functionality may be added later to support multiple.
    /// </summary>
    void SaveInfo() {
        string savedFlowchartName = "";
        string savedBlockName = "";
        int savedCommandIndex = -1;

        foreach (Flowchart fc in flowchartHolder.GetComponentsInChildren<Flowchart>()) {
            List<Block> executingBlocks = fc.GetExecutingBlocks();
            if (executingBlocks.Count > 0) {
                // fc has executing block
                // for now, just get first found executing block.
                // might have to change later
                savedFlowchartName = fc.gameObject.name;
                savedBlockName = executingBlocks[0].BlockName;
                savedCommandIndex = executingBlocks[0].activeCommand.CommandIndex;
                break;
            }
        }
        if (savedBlockName == "") {
            Debug.Log("No executing blocks.");
        }
        SetSavedData(savedFlowchartName, savedBlockName, savedCommandIndex);
    }
}
