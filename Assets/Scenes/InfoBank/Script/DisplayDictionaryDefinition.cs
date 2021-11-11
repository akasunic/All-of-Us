using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Xml;
using System.Linq;

using UnityEngine;
using UnityEngine.UI;

public class DisplayDictionaryDefinition : MonoBehaviour {

    private string xml_path = Directory.GetCurrentDirectory() + "/Assets/Scenes/InfoBank/DictionaryTerms.xml";

    public static string updateWord = "";

    public enum DisplayStatus { DEFAULT, MISSING, DEFINITION };
    private DisplayStatus currentDisplay;

    public GameObject missingDisplay;
    public GameObject defaultDisplay;
    public GameObject definitionDisplay;

    private Hashtable Words;
    private List<string> orderedWords;
    // Start is called before the first frame update
    void Start()
    {
        initWords(); 
    }

    void initWords()
    {
        var path = xml_path;
        var xml = new XmlDocument();
        xml.Load(path);
        Words = new Hashtable();
        orderedWords = new List<string>();
        var element = xml.DocumentElement;
        if (element != null)
        {
            var elemEnum = element.GetEnumerator();
            while (elemEnum.MoveNext())
            {
                var xmlItem = (XmlElement)elemEnum.Current;
                Words.Add(xmlItem.GetAttribute("name"), xmlItem.InnerText);
                orderedWords.Add(xmlItem.GetAttribute("name"));
            }
        }
        else
        {
            Debug.LogError("Dictionary Term loading failed");
        }
        ClearDescription();
    }
    public int GetNumWords()
    {
        return Words.Count;
    }

    public List<String> GetWords()
    {
        return orderedWords;
    }

    public void DisplayDescription(string word)
    {
        if (Words == null)
        {
            initWords();
        }

        if (Words.ContainsKey(word))
        {
            defaultDisplay.SetActive(false);
            missingDisplay.SetActive(false);
            definitionDisplay.SetActive(true);
            foreach (Transform child in definitionDisplay.transform)
            {
                GameObject childObj = child.gameObject; 
                if(child.name == "WordHeader")
                {
                    Text descriptionText = childObj.GetComponent<Text>();
                    descriptionText.text = word;
                }
                else if (child.name == "DefinitionHeader")
                {

                }
                else if (child.name == "DefinitionText")
                {
                    Text descriptionText = childObj.GetComponent<Text>();  
                    descriptionText.text = (string)Words[word];
                }
            }
            currentDisplay = DisplayStatus.DEFINITION;
        }
        else
        {
            WordNotFound(word);
        }
        
    }

    public void WordNotFound(string inputWord)
    {
        definitionDisplay.SetActive(false);
        defaultDisplay.SetActive(false);
        missingDisplay.SetActive(true);
        foreach (Transform child in missingDisplay.transform)
        {
            GameObject childObj = child.gameObject;
            if (childObj.name == "MissingText")
            {
                Text missingText = childObj.GetComponentInChildren<Text>();
                missingText.text = "\"" + inputWord + "\"";
            }
        }
        currentDisplay = DisplayStatus.MISSING;
        
    }
    public void ClearDescription()
    {
        definitionDisplay.SetActive(false);
        missingDisplay.SetActive(false);
        defaultDisplay.SetActive(true);
        currentDisplay = DisplayStatus.DEFAULT;
    }
    private void Update()
    {
        if (updateWord != "")
        {
            DisplayDescription(updateWord);
            updateWord = "";
        }
    }
    

    public static void UpdateDefinition(string word)
    {
        updateWord = word;
    }
   
    public DisplayStatus GetDisplayStatus()
    {
        return currentDisplay;
    }
    

 }
