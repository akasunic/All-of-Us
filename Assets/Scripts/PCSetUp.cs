using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PCSetUp : MonoBehaviour
{
    public InputField nameInputField;
    public Dropdown pronounsDropDown;
    private string firstName;
    private int intPronouns;
    private string pronouns;

    // Start is called before the first frame update
    void Start()
    {

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
        SceneManager.LoadScene("Tutorial");
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
