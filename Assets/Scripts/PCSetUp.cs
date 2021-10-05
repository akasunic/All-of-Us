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
    public Text nameFieldPlaceholder;
    public Dropdown pronounsDropDown;
    public Dropdown languageDropDown;
    public Button continueButton;
    public Button inactiveContinueButton;
    private string firstName = "";
    private int intPronouns;
    private string pronouns;
    private int intLanguage;
    private string language;
    
    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    void Start()
    {
        LangClass.setLanguage(GlobalGameInfo.language);
        
        // Setting texts from Strings.xml
        TitleText.text = LangClass.getString("pc_setup_title");
        NameText.text = LangClass.getString("name_field");
        PronounsText.text = LangClass.getString("pronouns_field");
        LanguageText.text = LangClass.getString("language_field");
        ContinueText.text = LangClass.getString("continue");
        InactiveContinueText.text = LangClass.getString("continue");
        nameFieldPlaceholder.text = LangClass.getString("first_name");

        // Control continue buttons
        continueButton.gameObject.SetActive(false);
        inactiveContinueButton.gameObject.SetActive(true);

        // Setting dropdown lists
        List<string> pronounsDropDownOptions = new List<string> { LangClass.getString("choose_one"), LangClass.getString("she_her"), LangClass.getString("he_his"), LangClass.getString("they_them")};
        List<string> languageDropDownOptions = new List<string> { LangClass.getString("choose_one"), LangClass.getString("english"), LangClass.getString("spanish")};

        pronounsDropDown.ClearOptions();
        languageDropDown.ClearOptions();

        pronounsDropDown.AddOptions(pronounsDropDownOptions);
        languageDropDown.AddOptions(languageDropDownOptions);
    }

    // Update is called once per frame
    void Update()
    {
        firstName = nameInputField.GetComponent<InputField>().text;
        intPronouns = pronounsDropDown.value;
        intLanguage = languageDropDown.value;

        if (firstName != null && !firstName.Equals("") && intPronouns != 0 && intLanguage != 0)
        {
            continueButton.gameObject.SetActive(true);
            inactiveContinueButton.gameObject.SetActive(false);
        } else {
            continueButton.gameObject.SetActive(false);
            inactiveContinueButton.gameObject.SetActive(true);
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

        // Change the language globally
        Debug.Log(GetLanguages(intLanguage));
        
        Debug.Log(LangClass.getCurrentLanguage());
        LangClass.setLanguage(GetLanguages(intLanguage));
        Debug.Log(LangClass.getCurrentLanguage());
        
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
                return LangClass.getString("spanish");
            default:
                return null;
        }
    }
}
