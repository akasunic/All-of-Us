using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.

public class ExpandOnClick : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    private Vector3 oldScale;

    private void AnimateScale(Vector3 initialScale, Vector3 endScale)
    {
        this.transform.localScale = endScale;
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        oldScale = this.transform.localScale;
        float newX = oldScale.x * 1.1f;
        float newY = oldScale.y * 1.1f;
        Vector3 endScale = new Vector3(newX, newY, oldScale.z);
        AnimateScale(oldScale, endScale);
    }
    public void OnPointerExit(PointerEventData eventData)
    {
    }
}
