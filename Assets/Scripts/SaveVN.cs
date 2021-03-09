using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Fungus;

public class SaveVN : MonoBehaviour
{
    public GameObject flowchartHolder;
    Flowchart variablesFlowchart;
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
        // get load position

        variablesFlowchart = flowchartHolder.transform.
            Find("Variables Flowchart").GetComponent<Flowchart>();
        if (variablesFlowchart == null) {
            Debug.LogError("Couldn't find variables flowchart");
            return;
        }
        // fcSavedFlowchartName = variablesFlowchart.GetVariable("savedFlowchartName");
        // fcSavedBlockName = variablesFlowchart.GetVariable("savedBlockName");
        // fcSavedCommandIndex = variablesFlowchart.GetVariable("savedCommandIndex");
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
        // if (!fcSavedFlowchartName.Equals("")) {
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

    public void SaveAndLoadScene(string sceneName) {
        SaveInfo();
        SceneManager.LoadScene(sceneName);
    }

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
        variablesFlowchart.SetStringVariable("savedFlowchartName", savedFlowchartName);
        variablesFlowchart.SetStringVariable("savedBlockName", savedBlockName);
        variablesFlowchart.SetIntegerVariable("savedCommandIndex", savedCommandIndex);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ReturnToScene() {
        // save position in visual novel

        // add a fade or something?
        SceneManager.LoadScene("Basic2DMap");
    }
}
