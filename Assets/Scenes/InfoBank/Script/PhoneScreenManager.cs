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

    // Start is called before the first frame update
    void Start()
    {
        messages.SetActive(false);
        notes.SetActive(false);
        contacts.SetActive(false);
        //detailPage.SetActive(false);
        home.SetActive(true);

        lastSelected = home;
    }

    public void switchToPage(string type){
        Debug.Log("switching to " + type);

        //remove all detail screens
        GameObject detailContainer = GameObject.Find("Detail Container");
        foreach (Transform child in detailContainer.transform) {
            GameObject.Destroy(child.gameObject);
        }

        //move back to default position
        GameObject phoneContainer = GameObject.Find("UI Container");
        RectTransform rt = phoneContainer.GetComponent<RectTransform>();
        rt.anchoredPosition = new Vector2(0, 0);

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
