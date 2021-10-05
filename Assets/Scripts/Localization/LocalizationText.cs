using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LocalizationText : MonoBehaviour
{

    public Text textComponent;
    public string key;
    Lang lang = new Lang(false);
    // Start is called before the first frame update
    void Start()
    {
        lang.setLanguage("English");
        string result = lang.getString(key);
        if (result == "")
        {
            Debug.Log("Key does not exist in Strings.xml");
        }
        textComponent.text = lang.getString(key);
    }

}
