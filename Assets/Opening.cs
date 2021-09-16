using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public TextMeshProUGUI ButtonText;


    // Localization Feature
    public Lang LangClass = new Lang(false);


    void Start()
    {
        ButtonText.text = LangClass.getString("start");
    }


    public void loadBackstoriesScene() {

        //set a session id if not there yet
        ResetGame.startGame();

        SceneManager.LoadScene("PCSetUp");
    }
    
    
}
