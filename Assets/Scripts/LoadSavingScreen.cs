using UnityEngine.SceneManagement;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.

public class LoadSavingScreen : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler// required interface when using the OnPointerEnter method.
{
    //Do this when the cursor enters the rect area of this selectable UI object.
    public void OnPointerEnter(PointerEventData eventData)
    {
        return;
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        SceneManager.LoadScene("Saving");
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        return;
    }
}
