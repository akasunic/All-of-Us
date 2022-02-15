using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.

public class ExpandOnHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    private Vector3 oldScale;
    private bool animating;
    private bool enlarged = false;


    private void AnimateScale(Vector3 initialScale, Vector3 endScale)
    {
        this.transform.localScale = endScale;
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (!animating && !enlarged)
        {
            animating = true;
            oldScale = this.transform.localScale;
            float newX = oldScale.x * 1.1f;
            float newY = oldScale.y * 1.1f;
            Vector3 endScale = new Vector3(newX, newY, oldScale.z);
            AnimateScale(oldScale, endScale);
            animating = false;
            enlarged = true;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if (enlarged)
        {
            animating = true;
            AnimateScale(this.transform.localScale, oldScale);
            enlarged = false;
            animating = false;
        }
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        if(!animating && enlarged)
        {
            animating = true;
            AnimateScale(this.transform.localScale, oldScale);
            animating = false;
            enlarged = false;
        }
    }
}
