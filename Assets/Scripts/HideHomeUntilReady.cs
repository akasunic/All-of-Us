using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideHomeUntilReady : MonoBehaviour
{
    // Start is called before the first frame update
    void Update()
    {
        if(InkFileManager.DailyQuestsCompleted < 3){
            gameObject.GetComponent<HoverMap>().isViewable = false;
        } else {
            gameObject.GetComponent<HoverMap>().isViewable = true;
        }
    }
}
