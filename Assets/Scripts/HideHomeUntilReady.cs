using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideHomeUntilReady : MonoBehaviour
{
    // Start is called before the first frame update
    // Disabled for now? I don't think we are using it in the current implementation
    void Update()
    {
        if(InkFileManager.DailyQuestsCompleted < 3){
            gameObject.GetComponent<HighlightClickableBuildlings2DMap>().isViewable = false;
        } else {
            gameObject.GetComponent<HighlightClickableBuildlings2DMap>().isViewable = true;
        }
    }
}
