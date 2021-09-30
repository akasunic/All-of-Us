using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.IO;
using System.Collections.Generic;

public class PCSetUp : MonoBehaviour
{
    public InputField nameInputField;
    public TextMeshProUGUI TitleText;
    public TextMeshProUGUI NameText;
    public TextMeshProUGUI PronounsText;
    public TextMeshProUGUI LanguageText;
    public TextMeshProUGUI ContinueText;
    public TextMeshProUGUI InactiveContinueText;
    public Text pronounsDropDownLabel;
    public Text languageDropDownLabel;
    public Dropdown pronounsDropDown;
    public Dropdown languageDropDown;
    public Button continueButton;
    public Button inactiveContinueButton;
    private string firstName;
    private int intPronouns;
    private string pronouns;
    private int intLanguage;
    private string language;
    
    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    void Start()
    {
        // Setting texts from Strings.xml
        TitleText.text = LangClass.getString("pc_setup_title");
        NameText.text = LangClass.getString("name_field");
        PronounsText.text = LangClass.getString("pronouns_field");
        LanguageText.text = LangClass.getString("language_field");
        ContinueText.text = LangClass.getString("continue");
        InactiveContinueText.text = LangClass.getString("continue");

        // Setting dropdown lists
        List<string> pronounsDropDownOptions = new List<string> { LangClass.getString("she_her"), LangClass.getString("he_his"), LangClass.getString("they_them")};
        List<string> languageDropDownOptions = new List<string> { LangClass.getString("english"), LangClass.getString("french")};

        pronounsDropDown.AddOptions(pronounsDropDownOptions);
        languageDropDown.AddOptions(languageDropDownOptions);

        nameInputField.placeholder.GetComponent<Text>().text = LangClass.getString("first_name");
        pronounsDropDown.captionText.text = LangClass.getString("choose_one");
        languageDropDown.captionText.text = LangClass.getString("choose_one");
    }

    // Update is called once per frame
    void Update()
    {
        firstName = nameInputField.text;
        intPronouns = pronounsDropDown.value;
        intLanguage = languageDropDown.value;

        if (firstName != null && !firstName.Equals("") && intPronouns != 0 && intLanguage != 0)
        {
            continueButton.enabled = true;
            inactiveContinueButton.enabled = false;
        } else {
            continueButton.enabled = false;
            inactiveContinueButton.enabled = true;
        }
    }

    public void Submit()
    {
        if (firstName == null || firstName.Equals("") || intPronouns == 0 || intLanguage == 0)
        {
            Debug.Log("Name, Pronouns, and Language cannot be empty");
            return;
        }

        GlobalGameInfo.name = firstName;
        GlobalGameInfo.pronouns = GetPronouns(intPronouns);
        GlobalGameInfo.language = GetLanguages(intLanguage);
        SceneManager.LoadScene("Backstories");
    }

    private string GetPronouns(int intPronouns)
    {
        switch (intPronouns)
        {
            case 1:
                return LangClass.getString("she_her");
            case 2:
                return LangClass.getString("he_his");
            case 3:
                return LangClass.getString("they_them");
            default:
                return null;
        }
    }

    private string GetLanguages(int intLanguage)
    {
        switch (intLanguage)
        {
            case 1:
                return LangClass.getString("english");
            case 2:
                return LangClass.getString("french");
            default:
                return null;
        }
    }
}
