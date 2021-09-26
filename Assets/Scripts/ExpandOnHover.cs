using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;// Required when using Event data.

public class ExpandOnHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    public GameObject hoverItem;
    public GameObject parent;
    private Vector3 oldScale;
    private bool animating;


    private void AnimateScale(Vector3 initialScale, Vector3 endScale)
    {
        /*
        while (Time.time - initialTime < 1)
        {
            Debug.Log(Time.time);
            float currentTime = Time.time;
            float diff = currentTime - initialTime;
            parent.transform.localScale = Vector3.Lerp(initialScale, endScale, 1 - diff);
        }
        */
        /*
        for(int i = 0; i < 1000; i++)
        {
            float frac = i / 1000;
            Vector3 interm = Vector3.Lerp(initialScale, endScale, frac);
            parent.transform.localScale = interm;
            if(i % 250 == 0)
            {
                Debug.Log(interm.x);
            }
        }
        */
        parent.transform.localScale = endScale;
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (!animating)
        {
            animating = true;
            oldScale = parent.transform.localScale;
            float newX = oldScale.x * 1.05f;
            float newY = oldScale.y * 1.05f;
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
            AnimateScale(parent.transform.localScale, oldScale);
            animating = false;
        }
    }
}
