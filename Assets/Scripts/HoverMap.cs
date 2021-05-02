using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;// Required when using Event data.

public class HoverMap : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    public GameObject hoverItem;
    public GameObject clickItem;

    //other scrips can change this
    public bool isViewable = true;

    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {
        if(hoverItem != null && isViewable){
            hoverItem.SetActive(true);
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if(hoverItem != null){
            hoverItem.SetActive(false);
        }
        if(clickItem != null && isViewable){
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