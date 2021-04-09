using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeDemoController : MonoBehaviour
{
    private static string previousScene = "Basic2DMap";

    public void OpenInfoBank()
    {
        GameManager.Instance.IncreaseProgress(10);
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene("InfoBank");
    }

    public void Open2DMap()
    {
        GameManager.Instance.IncreaseProgress(5);
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene("Basic2DMap");
    }

    public static void LoadPreviousScene() {
        string temp = previousScene;
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(temp);
    }
}
