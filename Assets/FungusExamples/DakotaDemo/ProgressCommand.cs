using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// This is an easy to use Command for incrementing the progress of a specific
/// chapter using the progress event system. This can be placed in a flowchart;
/// the class itself is mostly copied from the default Fungus commands.
/// </summary>
namespace Fungus {
    [CommandInfo("Scripting",
                 "Progress Chapter",
                 "Progress through a given chapter using the progress" +
                 " event system.")]

    
    [AddComponentMenu("")]
    public class ProgressCommand : Command {
        [Tooltip("Delay (in seconds) before the methods will be called")]
        [SerializeField] protected float delay;
        [Tooltip("The chapter to increment progress in.")]
        [SerializeField] protected int chapter;
        // may need to expand to support dynamic variables later

        public override void OnEnter() {
            if (Mathf.Approximately(delay, 0f)) {
                DoProgress();
            } else {
                Invoke("DoProgress", delay);
            }
        }

        protected virtual void DoProgress() {
            ProgressEvents.instance.ProgressChapter(chapter);
        }

        public override string GetSummary() {
            return "Make progress in Chapter " + chapter;
        }

        public override Color GetButtonColor() {
            return new Color32(235, 191, 217, 255);
        }

        public override bool HasReference(Variable variable) {
            // may need to expand to support dynamic variables later
            return base.HasReference(variable);
        }
    }
}
