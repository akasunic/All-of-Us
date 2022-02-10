using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.IO;


public class PCSetUpDropdowns : MonoBehaviour
{
    public Dropdown pronounsDropDown;
    public Dropdown languageDropDown;
    public Dropdown researchDropDown;
    
    // Localization Feature
    public Lang LangClass = new Lang();

    // Start is called before the first frame update
    void Start()
    {
        
        // Setting dropdown lists
        List<string> pronounsDropDownOptions = new List<string> { "", LangClass.getString("she_her"), LangClass.getString("he_his"), LangClass.getString("they_them")};
        List<string> languageDropDownOptions = new List<string> { "", LangClass.getString("english"), LangClass.getString("spanish")};
        List<string> researchDropDownOptions = new List<string> { "", "Regular", "Version 1", "Version 2"};

        pronounsDropDown.AddOptions(pronounsDropDownOptions);
        languageDropDown.AddOptions(languageDropDownOptions);
        researchDropDown.AddOptions(researchDropDownOptions);
    }
}
