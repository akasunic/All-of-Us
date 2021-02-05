using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public void loadMapScene() {

        DataCollection.LogEvent("Type test", "Initiator test");

        SceneManager.LoadScene("Basic2DMap");
    }
    
}
