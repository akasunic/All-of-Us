using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class PhoneScreenManager : MonoBehaviour
{
    public GameObject messages;
    public GameObject notes;
    public GameObject contacts;

    private GameObject lastSelected;

    //animation variables

    private Vector2 outScreen = new Vector2(0, -60);
    private Vector2 inScreen = new Vector2(-295, -70);
    private float inRotation = 15f;
    private float outRotation = 0f;
    private Vector2 inDetailScreen = new Vector2(415, 263);
    private Vector2 outDetailScreen = new Vector2(1000, 263);

    private float seconds = 0.6f;
    private float timer;
    private float percent;
    private Vector2 endPoint;
    private Vector2 startPoint;
    private float endPointRotation;
    private float startPointRotation;
    private Vector2 startDetailPage;
    private Vector2 endDetailPage;
    private Vector2 differenceDetailPage;
    private Vector2 difference;
    private float rotationDifference;

    private bool animatedState = false;

    //the transforms that we're animating
    private RectTransform rt;
    private RectTransform rtDetailPage;

    //phone screen animation vars
    private bool started = false;

    GameObject detailContainer;
    GameObject detailChildContainer;
    GameObject phoneContainer;
    GameObject sectionName; 
 
    void Update(){
      if (started && timer <= seconds) {
        timer += Time.deltaTime;
        percent = (float) EasingFunctionHelpers.easeIn(timer / seconds);
        rt.anchoredPosition = startPoint + difference * percent; 
        rtDetailPage.anchoredPosition = startDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, startPointRotation + rotationDifference * percent);
        //if the animation is on it's last loop, we're done 
        //now it's time to remove the things that animated off screen
        if(timer > seconds && lastSelected == null){
            foreach (Transform child in detailChildContainer.transform) {
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

        lastSelected = null;

        //grab objects to animate
        detailContainer = GameObject.Find("Detail Container");
        detailChildContainer = GameObject.Find("Child Container");
        sectionName = GameObject.Find("Section Name");
        phoneContainer = GameObject.Find("Phone");
        rt = phoneContainer.GetComponent<RectTransform>();
        rtDetailPage = detailContainer.GetComponent<RectTransform>();
    }

    public void animateItemsIn(){
        if(animatedState) return;
        //start animation stuff
        endDetailPage = inDetailScreen;
        startDetailPage = outDetailScreen;
        endPoint = inScreen;
        startPoint = outScreen;
        startPointRotation = outRotation;
        endPointRotation = inRotation;
        difference = endPoint - startPoint;
        rotationDifference = endPointRotation - startPointRotation;
        differenceDetailPage = endDetailPage - startDetailPage;
        started = true;
        timer = 0;
        animatedState = true;
    }

    public void animateItemsOut(){
        endDetailPage = outDetailScreen;
        startDetailPage = inDetailScreen;
        endPoint = outScreen;
        startPoint = inScreen;
        startPointRotation = inRotation;
        endPointRotation = outRotation;
        difference = endPoint - startPoint;
        rotationDifference = endPointRotation - startPointRotation;
        differenceDetailPage = endDetailPage - startDetailPage;
        started = true;
        timer = 0;
        animatedState = false;
    }

    public void switchToPage(string type){
        animateItemsIn();
        //start toggling pages
        sectionName.GetComponent<TextMeshProUGUI>().text = getSectionName(type);
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
            case "notes":
                return notes;
            case "contacts":
                return contacts;
            case "back":
                return null;
        }
        return null;
    }
    private string getSectionName(string type){
        switch (type.ToLower()){
            case "messages":
                return "Messages";
            case "notes":
                return "My Journals";
            case "contacts":
                return "My Contacts";
            case "back":
                return "Home Screen";
        }
        return null;
    }
}
