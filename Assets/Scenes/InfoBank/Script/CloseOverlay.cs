using UnityEngine;
using System.Collections;
 
//use this to self destruct 
public class CloseOverlay : MonoBehaviour {
 
    // Use this for initialization
    public void Close () {
      DetailPageManager.clearChangedTagsList();
      Destroy(gameObject);
    }

    public void Save(){
      DetailPageManager.updateLastOverlayItemWithTagsList();
      Destroy(gameObject);
    }
}