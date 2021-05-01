using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{

    public void loadBackstoriesScene() {

        //set a session id if not there yet
        ResetGame.startGame();

        SceneManager.LoadScene("PCSetUp");
    }
    
    
}
