using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public class ResetGame: MonoBehaviour{

    //generates a unique session id and stores it into playerPrefs
    public static void startGame(){
      //if there is already a session in progress, DO NOT OVERWRITE
      //otherwise, make new session key
      if (!PlayerPrefs.HasKey("sessionId"))
      {
        PlayerPrefs.SetInt("sessionId", 1);
        PlayerPrefs.Save ();
        Debug.Log("Started game session and made a new session id of 1");
      }
    }
    public void resetGame(){
      //if there is no session in progress yet, make a new id
      if (!PlayerPrefs.HasKey("sessionId"))
      {
        PlayerPrefs.SetInt("sessionId", 1);
        PlayerPrefs.Save();
        Debug.Log("Started game session and made a new session id of 1");
      } else {
         //else we are restarting the game so we increment the session id
        int newSessionId = PlayerPrefs.GetInt("sessionId") + 1;
        PlayerPrefs.SetInt("sessionId", newSessionId);
        PlayerPrefs.Save();
        Debug.Log("Restarted game session and made a new session id of " + newSessionId);
      }
    }

    public void debugClearPlayerPrefs(){
      PlayerPrefs.DeleteAll();
    }

}