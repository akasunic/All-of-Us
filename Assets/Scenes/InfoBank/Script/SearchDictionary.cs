using System.Collections;
using System.Globalization;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using UnityEditor;

public class SearchDictionary : MonoBehaviour
{
    public DisplayDictionaryDefinition definitionsManager;
    public GameObject dictionaryTermPrefab;
    public Scrollbar verticalScrollbar;

    private List<GameObject> allTerms;
    private List<GameObject> displayedTerms;
    // Start is called before the first frame update
    void Start()
    {
        allTerms = new List<GameObject>();
        displayedTerms = new List<GameObject>();
        populateTerms();
    }

    private void populateTerms()
    {
        
        int numWords = definitionsManager.GetNumWords();
        List<string> words = definitionsManager.GetWords();
        GridLayoutGroup glg = GetComponent<GridLayoutGroup>();
        int topPadding = glg.padding.top;
        int bottomPadding = glg.padding.bottom;
        int cellHeight = (int)glg.cellSize.y;
        int cellHeightSpacing = (int)glg.spacing.y;
        RectTransform rt = GetComponent<RectTransform>();
        float contentWindowHeight = (float)(numWords * (cellHeight + cellHeightSpacing) + topPadding + bottomPadding);
        rt.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, contentWindowHeight);
        for (int i = 0; i < numWords; i++)
        {
            GameObject newObject = Instantiate(dictionaryTermPrefab, this.transform);
            Text newText = newObject.GetComponentInChildren<Text>();
            newText.text = words[i];
            allTerms.Add(newObject);
            displayedTerms.Add(newObject);
            // newText.font = (Font)AssetDatabase.LoadAssetAtPath("Assets/Fonts/Lato-Regular.ttf", typeof(Font));
        }
    }

    public void searchForTerms(string searchWord)
    {
        List<GameObject> newDisplayedTerms = new List<GameObject>(); 
        foreach (GameObject go in allTerms) 
        {
            string word = go.GetComponentInChildren<Text>().text;
            int wordInd = 0;
            int searchInd = 0;
            while (wordInd < word.Length) 
            {
                if (searchWord == "")
                {
                    newDisplayedTerms.Add(go);
                    go.SetActive(true);
                    break;
                }
                else if (Char.ToLower(word[wordInd]) == Char.ToLower(searchWord[searchInd]))
                {
                    searchInd++;
                    if (searchInd == searchWord.Length)
                    {
                        newDisplayedTerms.Add(go);
                        go.SetActive(true);
                        break;
                    }
                }
                else
                {
                    searchInd = 0;
                }
                wordInd++;
            }
            if (wordInd == word.Length)
            {
                go.SetActive(false);
            }
        }
        displayedTerms = newDisplayedTerms;
        if (displayedTerms.Count == 0)
        {
            definitionsManager.WordNotFound();
        }
        else if (definitionsManager.GetDisplayStatus() != DisplayDictionaryDefinition.DisplayStatus.DEFINITION)
        {
            // Reset it to the top of the window
            verticalScrollbar.value = 1;
            definitionsManager.ClearDescription();
        }
    }

}
