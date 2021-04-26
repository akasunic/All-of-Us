using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;// Required when using Event data.

public class HoverMap : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    public GameObject hoverItem;
    public GameObject clickItem;
    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {
        if(hoverItem != null){
            hoverItem.SetActive(true);
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if(hoverItem != null){
            hoverItem.SetActive(false);
        }
        if(clickItem != null){
            clickItem.SetActive(true);
        }
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        if(hoverItem != null){
            hoverItem.SetActive(false);
        }
        if(clickItem != null){
            clickItem.SetActive(false);
        }
    }
}