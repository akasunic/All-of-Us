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

    private float seconds = 0.4f;
    private float timer;
    private float percent;

    private Vector2 point;
    private Vector2 start = new Vector2(0, 0);
    private float ptRotation;
    private float rotation = 0f;
    private Vector2 startDetailPage = new Vector2(600, 0);
    private Vector2 endDetailPage = new Vector2(0, 0);
    
    private Vector2 differenceDetailPage;
    private Vector2 difference;
    private float rotationDifference;

    private RectTransform rt;
    private RectTransform rtDetailPage;

    GameObject detailContainer;
    GameObject phoneContainer; 
 
    void Update(){
      if (timer <= seconds) {
        // basic timer
        timer += Time.deltaTime;
        // percent is a 0-1 float showing the percentage of time that has passed on our timer!
        percent = timer / seconds;
        // multiply the percentage to the difference of our two positions
        // and add to the start
        rt.anchoredPosition = point + difference * percent; 
        rtDetailPage.anchoredPosition = endDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, ptRotation + rotationDifference * percent);

        if(timer > seconds){
            foreach (Transform child in detailContainer.transform) {
                GameObject.Destroy(child.gameObject);
            }
        }
      } 
    }

    // Start is called before the first frame update
    void Start()
    {
        messages.SetActive(false);
        notes.SetActive(false);
        contacts.SetActive(false);
        //detailPage.SetActive(false);
        home.SetActive(true);

        lastSelected = home;
        detailContainer = GameObject.Find("Detail Container");
        phoneContainer = GameObject.Find("Phone");
        rt = phoneContainer.GetComponent<RectTransform>();
        rtDetailPage = detailContainer.GetComponent<RectTransform>();
    }

    public void switchToPage(string type){
        Debug.Log("switching to " + type);

        //remove all detail screens


        // rt.anchoredPosition = new Vector2(0, 0);
        // rt.rotation = Quaternion.Euler(0f, 0f, 0f);

        endDetailPage = rtDetailPage.anchoredPosition;
        point = rt.anchoredPosition;
        ptRotation = rt.rotation.z;

        timer = 0;

        difference = start - point;
        rotationDifference = rotation - ptRotation;
        differenceDetailPage = startDetailPage - endDetailPage;

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
