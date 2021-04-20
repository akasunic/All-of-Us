using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public void loadMapScene() {

        //set a session id if not there yet
        ResetGame.startGame();

        // Testing logging an event
        DataCollection.LogEvent("Type test", "Initiator test");

        SceneManager.LoadScene("Basic2DMap");
    }
    
    
}
