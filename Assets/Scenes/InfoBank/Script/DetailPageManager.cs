using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DetailPageManager : MonoBehaviour
{
    public Transform detailPagePrefab;
    private string text = "Failed to load";
    private string description = "Failed to load";
    
    public void openDetailPage(){
      GameObject phone = GameObject.Find("Detail Container");
      Transform newItem = Instantiate(detailPagePrefab, phone.transform);
      Transform txt = HelperFunctions.FindChildByRecursion(newItem, "text");
      Transform des = HelperFunctions.FindChildByRecursion(newItem, "description");

      txt.gameObject.GetComponent<TextMeshProUGUI>().text = text;
      des.gameObject.GetComponent<TextMeshProUGUI>().text = description;
    }

    public void setText(string txt){
      text = txt;
      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "text");
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = text;

    }

    public void setDescription(string des){
      description = des;
      Transform descriptionChild = HelperFunctions.FindChildByRecursion(transform, "description");
      descriptionChild.gameObject.GetComponent<TextMeshProUGUI>().text = description;
    }
}
