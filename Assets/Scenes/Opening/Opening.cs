using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public void loadMapScene() {
        Debug.Log("AAAAA");
        SceneManager.LoadScene("Basic2DMap");

    }

}
