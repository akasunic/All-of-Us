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
    public TextMeshProUGUI StartButton;
    public Dropdown pronounsDropDown;
    private string firstName;
    private int intPronouns;
    private string pronouns;
    
    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    void Start()
    {
        StartButton.text = LangClass.getString("start");
    }

    // Update is called once per frame
    void Update()
    {
        firstName = nameInputField.text;
        intPronouns = pronounsDropDown.value;
    }

    public void Submit()
    {
        if (firstName == null || firstName.Equals("") || intPronouns == 0)
        {
            Debug.Log("Name and Pronouns cannot be empty");
            return;
        }

        GlobalGameInfo.name = firstName;
        GlobalGameInfo.pronouns = GetPronouns(intPronouns);
        SceneManager.LoadScene("Backstories");
    }

    private string GetPronouns(int intPronouns)
    {
        switch (intPronouns)
        {
            case 1:
                return "She/Her";
            case 2:
                return "He/His";
            case 3:
                return "They/Them";
            default:
                return null;
        }
    }
}
