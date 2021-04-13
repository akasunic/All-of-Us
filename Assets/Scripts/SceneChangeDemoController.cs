using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeDemoController : MonoBehaviour
{
    public void OpenInfoBank()
    {
        SceneManager.LoadScene("InfoBank");
    }

    public void Open2DMap()
    {
        SceneManager.LoadScene("Basic2DMap");
    }

    public void OpenNPC()
    {
        SceneManager.LoadScene("DakotaDemo");
    }
}
