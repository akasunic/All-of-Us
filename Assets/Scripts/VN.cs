using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.IO;
using System.Collections.Generic;

public class VN : MonoBehaviour
{
    public TextMeshProUGUI buildingName;

    // Tutorial components
    public GameObject TutorialContainer;
    public GameObject TutorialArrow;
    public Button TutorialButton;
    public TextMeshProUGUI YellowTitle;
    public TextMeshProUGUI WhiteTitle;
    public TextMeshProUGUI WhiteText;
    public TextMeshProUGUI ButtonText;
    public GameObject Glow;
    
    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    void Start()
    {
        LangClass.setLanguage(GlobalGameInfo.language);
        
        // buildingName.text = LangClass.getString("name_field");

        switch (SceneManager.GetActiveScene().name) {
            case ("CommunityVN"):
                buildingName.text = LangClass.getString("community_center");
                break;
            case ("HealthVN"):
                buildingName.text = LangClass.getString("health_clinic");
                break;
            case ("LibraryVN"):
                buildingName.text = LangClass.getString("library");                   
                break;
        }

        // Tutorial
        if (!GlobalGameInfo.dictionaryFlag) {
            TutorialContainer.SetActive(true);
            TutorialArrow.SetActive(true);
            TutorialButton.enabled = true;
            Glow.SetActive(true);

            YellowTitle.text = LangClass.getString("dictionary_vn_yellowtitle");
            WhiteTitle.text = LangClass.getString("dictionary_vn_whitetitle");
            WhiteText.text = LangClass.getString("dictionary_vn_whitetext");
            ButtonText.text = LangClass.getString("dictionary_vn_buttontext");
        }

    }

    public void tutorialClick() {
        TutorialContainer.SetActive(false);
        TutorialArrow.SetActive(false);
        TutorialButton.enabled = false;
        GlobalGameInfo.dictionaryFlag = true;
        Glow.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {

    }

}
