using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.
using UnityEngine.UI;



public class ClearSearchBar : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    public InputField searchBar;
    public DisplayDictionaryDefinition definitionsManager;
    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {
        return;
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        searchBar.text = "";
        definitionsManager.ClearDescription();
        SelectDictionaryTerm.ClearSelectedTerm();
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        
    }
}
