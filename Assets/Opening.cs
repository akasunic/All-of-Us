using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class Opening : MonoBehaviour
{
    public TextMeshProUGUI ContinueButtonText;
    public TextMeshProUGUI NewGameButton;
    public TextMeshProUGUI TutorialButton;
    public GameObject ContinueButton;


    // Localization Feature
    public Lang LangClass = new Lang(false);


    void Start()
    {
        LangClass.setLanguage(GlobalGameInfo.language);
        
        ContinueButtonText.text = LangClass.getString("continue");
        NewGameButton.text = LangClass.getString("new_game");
        TutorialButton.text = LangClass.getString("tutorial");

        // Loading game data
        GlobalGameInfo.gameData = SaveSerial.LoadGame();

        // Show continue button
        if (GlobalGameInfo.gameData != null) {
            ContinueButton.SetActive(true);
        }
    }


    public void onNewGameClick() {

        //set a session id if not there yet
        ResetGame.startGame();

        SceneManager.LoadScene("Backstories");
    }

    public void onTutorialClick() {

        //set a session id if not there yet

        // ResetGame.startGame();
        // SceneManager.LoadScene("Tutorial");
    }

    public void onContinueClick() {

        SceneManager.LoadScene("StartWeek");
    }
    
    
}
