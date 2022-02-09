using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeDemoController : MonoBehaviour
{
    // used for back button
    private static string previousScene = "Map";

    public void OpenInfoBank()
    {
        // GameManager.Instance.IncreaseProgress(10);
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene("InfoBank");
    }

    public void Open2DMap()
    {
        // GameManager.Instance.IncreaseProgress(5);
        previousScene = SceneManager.GetActiveScene().name;
        Destroy (GameObject.FindGameObjectWithTag("Music"));
        SceneManager.LoadScene("Map");
    }

    public void LoadPreviousScene() {
        LoadPreviousSceneStatic();
    }

    public static void LoadPreviousSceneStatic() {
        string temp = previousScene;
        previousScene = SceneManager.GetActiveScene().name;
        Destroy (GameObject.FindGameObjectWithTag("Music"));
        SceneManager.LoadScene(temp);
    }

    public void OpenScene(string scene) {
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(scene);
    }

    public void OpenVNScene(string character) {

    }

    public void OpenOpeningScene() {
        Destroy (GameObject.FindGameObjectWithTag("Music"));
        SceneManager.LoadScene("OpeningScene");
    }
}
