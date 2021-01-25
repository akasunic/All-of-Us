using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ContactInfoPageManager : MonoBehaviour
{
    public Transform contactPagePrefab;
    private string text = "Failed to load";
    private string description = "Failed to load";
    
    public void openContactPage(){
      GameObject phone = GameObject.Find("Phone");
      Transform newItem = Instantiate(contactPagePrefab, phone.transform);
      Transform txt = HelperFunctions.FindChildByRecursion(newItem, "Name");
      Transform des = HelperFunctions.FindChildByRecursion(newItem, "Description");

      txt.gameObject.GetComponent<TextMeshProUGUI>().text = text;
      //des.gameObject.GetComponent<TextMeshProUGUI>().text = description;
    }

    public void setText(string txt){
      text = txt;
      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "Name");
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = text;

    }

    public void setDescription(string des){
      description = des;
      Transform descriptionChild = HelperFunctions.FindChildByRecursion(transform, "Description");
      descriptionChild.gameObject.GetComponent<TextMeshProUGUI>().text = description;
    }
}
