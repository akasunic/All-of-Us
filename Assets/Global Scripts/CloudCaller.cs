using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloudCaller : MonoBehaviour
{

    public CloudHandler cloudHandler;

    void Start() {

      Debug.Log("starting cloud handler");
      cloudHandler = new CloudHandler();
    }

    //a test function to write something to the database
    public void WriteTest(){
      cloudHandler.WriteNewEvent("test type", "test initiator", 1000);
    }
}
