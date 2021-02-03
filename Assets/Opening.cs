using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public void loadMapScene() {
        SceneManager.LoadScene("Basic2DMap");
    }
    
}
