using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.
using UnityEngine.UI;
using TMPro;



public class SelectDictionaryTerm : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    private static SelectDictionaryTerm selectedTerm;

    private const int selectedImageObjectIndex = 0;
    private const int highlightedImageObjectIndex = 1;
    private const int textObjectIndex = 2;

    private static Color defaultTextColor = new Color(0.4f, 0.4f, 0.4f, 1.0f);
    private static Color selectedTextColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    //private static Color selectedTextColor = new Color(0.9811321f, 0.09286802f, 0f, 1.0f);
    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {

    }

    public static void ClearSelectedTerm()
    {
        if (selectedTerm != null)
        {
            TextMeshProUGUI selectedTermText = selectedTerm.GetComponentInChildren<TextMeshProUGUI>();
            selectedTermText.color = defaultTextColor;
            selectedTerm.transform.GetChild(selectedImageObjectIndex).gameObject.SetActive(false);
        }
        selectedTerm = null;
    }

    public static void SetSelectedTerm(SelectDictionaryTerm newTerm)
    {
        if(selectedTerm != null)
        {
            TextMeshProUGUI prevTermText = selectedTerm.GetComponentInChildren<TextMeshProUGUI>();
            prevTermText.color = defaultTextColor;
            selectedTerm.transform.GetChild(selectedImageObjectIndex).gameObject.SetActive(false);
        }
        selectedTerm = newTerm;
        TextMeshProUGUI selectedTermText = selectedTerm.GetComponentInChildren<TextMeshProUGUI>();
        selectedTermText.color = selectedTextColor;
        selectedTerm.transform.GetChild(selectedImageObjectIndex).gameObject.SetActive(true);
        DisplayDictionaryDefinition.UpdateDefinition(selectedTermText.text);
    }

    public static SelectDictionaryTerm GetSelectedTerm()
    {
        return selectedTerm;
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        SetSelectedTerm(this);
    }
    public void OnPointerExit(PointerEventData eventData)
    {

    }
}
