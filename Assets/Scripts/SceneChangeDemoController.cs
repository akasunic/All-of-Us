using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeDemoController : MonoBehaviour
{
    public void OpenInfoBank()
    {
        if(GameManager.Instance != null){
            GameManager.Instance.IncreaseProgress(10);
        }
        
        SceneManager.LoadScene("InfoBank");
    }

    public void Open2DMap()
    {
        if(GameManager.Instance != null){
            GameManager.Instance.IncreaseProgress(5);
        }
        
        SceneManager.LoadScene("Basic2DMap");
    }

    public void OpenNPC()
    {
        SceneManager.LoadScene("DakotaDemo");
    }
}
