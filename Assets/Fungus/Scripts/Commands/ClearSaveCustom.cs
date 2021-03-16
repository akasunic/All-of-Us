using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus {
    /// <summary>
    /// Clears saved data from the Variables Flowchart used for the All of Us save system.
    /// </summary>
    [CommandInfo("Custom",
                 "Clear Variables Flowchart Save",
                 "Clears saved data from the Variables Flowchart used for the All of Us save system.")]
    [AddComponentMenu("")]
    public class ClearSaveCustom : Command 
    {
        [Tooltip("The Variables Flowchart used in the save system.")]
        [SerializeField] protected Flowchart variablesFlowchart;
        public override void OnEnter() {
            variablesFlowchart.SetStringVariable("savedFlowchartName", "");
            variablesFlowchart.SetStringVariable("savedBlockName", "");
            variablesFlowchart.SetIntegerVariable("savedCommandIndex", -1);
            Continue();
        }

        public override string GetSummary() {
            return "Clear Variables Flowchart saved data.";
        }
    }
}
