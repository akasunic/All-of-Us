using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.
using UnityEngine.UI;



public class SelectDictionaryTerm : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    private static SelectDictionaryTerm selectedTerm;
    private Color defaultTextColor = new Color(0.4f, 0.4f, 0.4f, 1.0f);
    private Color selectedColor = new Color(0.9811321f, 0.09286802f, 0f, 1.0f);
    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {
    }

    public static void SetSelectedTerm(SelectDictionaryTerm newTerm)
    {
        selectedTerm = newTerm;
    }

    public static SelectDictionaryTerm GetSelectedTerm()
    {
        return selectedTerm;
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        
        SelectDictionaryTerm prevTerm = GetSelectedTerm(); 
        if(prevTerm != null)
        {
            Text prevTermText = prevTerm.GetComponentInChildren<Text>();
            prevTermText.color = defaultTextColor;
        }

        SetSelectedTerm(this);
        Text newText = GetComponentInChildren<Text>();
        newText.color = selectedColor;
        // Debug.Log(newText.text);
        DisplayDictionaryDefinition.UpdateDefinition(newText.text);
       
    }
    public void OnPointerExit(PointerEventData eventData)
    {

    }
}
