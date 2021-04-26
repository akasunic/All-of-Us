using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class AddCustomTag : MonoBehaviour
{
    public string inputTagText;
    public TMP_InputField inputField;

    void Start(){
        inputField.onEndEdit.AddListener(delegate { inputValue(inputField); });
    }

    public void addCustomTag(){
        TagManager.AddToCustomTags(inputTagText);
    }
  
    public void inputValue(TMP_InputField userInput)
    {
        inputTagText = userInput.text;
    }
}
