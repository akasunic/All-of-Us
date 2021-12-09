using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class Backstories : MonoBehaviour

{
    private int current_text_counter = 1;
    public Text Textfield;
    public TextMeshProUGUI NextText;
    public GameObject NextButton;

    // Localization Feature
    public Lang LangClass = new Lang(false);

    void Start()
    {
        LangClass.setLanguage(GlobalGameInfo.language);

        Textfield.text = LangClass.getString("backstories_1");
        NextText.text = LangClass.getString("next");
    }


    public void setNextText() {
        SceneManager.LoadScene("PCSetup");
    }
    
}