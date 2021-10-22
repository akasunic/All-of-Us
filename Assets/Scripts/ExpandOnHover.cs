using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.

public class ExpandOnHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    private Vector3 oldScale;
    private bool animating;


    private void AnimateScale(Vector3 initialScale, Vector3 endScale)
    {
        this.transform.localScale = endScale;
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (!animating)
        {
            animating = true;
            oldScale = this.transform.localScale;
            float newX = oldScale.x * 1.1f;
            float newY = oldScale.y * 1.1f;
            Vector3 endScale = new Vector3(newX, newY, oldScale.z);
            AnimateScale(oldScale, endScale);
            animating = false;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        // Do nothing on click, other scripts do this already
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        if(!animating)
        {
            animating = true;
            AnimateScale(this.transform.localScale, oldScale);
            animating = false;
        }
    }
}
