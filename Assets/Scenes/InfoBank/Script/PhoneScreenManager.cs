using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhoneScreenManager : MonoBehaviour
{
    public GameObject messages;
    public GameObject notes;
    public GameObject contacts;

    public GameObject home;
    private GameObject lastSelected;

    //animation variables
    private float seconds = 0.6f;
    private float timer;
    private float percent;
    private Vector2 endPoint;
    private Vector2 startPoint = new Vector2(0, 0);
    private float endPointRotation = 9f;
    private float startPointRotation = 0f;
    private Vector2 startDetailPage = new Vector2(600, 0);
    private Vector2 endDetailPage = new Vector2(0, 0);
    private Vector2 differenceDetailPage;
    private Vector2 difference;
    private float rotationDifference;

    //the transforms that we're animating
    private RectTransform rt;
    private RectTransform rtDetailPage;

    //phone screen animation vars
    private bool started = false;

    GameObject detailContainer;
    GameObject phoneContainer; 
 
    void Update(){
      if (started && timer <= seconds) {
        timer += Time.deltaTime;
        percent = timer / seconds;
        rt.anchoredPosition = endPoint + difference * percent; 
        rtDetailPage.anchoredPosition = endDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, endPointRotation + rotationDifference * percent);
        //if the animation is on it's last loop, we're done 
        //now it's time to remove the things that animated off screen
        if(timer > seconds && lastSelected == home){
            foreach (Transform child in detailContainer.transform) {
                GameObject.Destroy(child.gameObject);
            }
            started = false;
        }
      } 
    }

    void Start()
    {
        messages.SetActive(false);
        notes.SetActive(false);
        contacts.SetActive(false);
        home.SetActive(true);

        lastSelected = home;

        //grab objects to animate
        detailContainer = GameObject.Find("Detail Container");
        phoneContainer = GameObject.Find("Phone");
        rt = phoneContainer.GetComponent<RectTransform>();
        rtDetailPage = detailContainer.GetComponent<RectTransform>();
    }

    public void switchToPage(string type){

        //start animation stuff
        endDetailPage = rtDetailPage.anchoredPosition;
        endPoint = rt.anchoredPosition;
        endPointRotation = rt.eulerAngles.z;

        endPointRotation = (endPointRotation > 359) ? 0 : endPointRotation;

        difference = startPoint - endPoint;
        rotationDifference = startPointRotation - endPointRotation;
        differenceDetailPage = startDetailPage - endDetailPage;
        started = true;
        timer = 0;

        //start toggling pages
        GameObject go = getGameObject(type);
        if(lastSelected != null){
            Debug.Log(lastSelected);
            lastSelected.SetActive(false);
        }
        if(go != null){
            go.SetActive(true);
            lastSelected = go;
            Debug.Log(lastSelected);
        }
    }

    private GameObject getGameObject(string type){
        switch (type.ToLower()){
            case "messages":
                return messages;
            case "home":
                return home;
            case "notes":
                return notes;
            case "contacts":
                return contacts;
        }
        return null;
    }
}
