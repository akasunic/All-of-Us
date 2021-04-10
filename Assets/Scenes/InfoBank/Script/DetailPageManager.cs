using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

//this is attached to instantiated prefabs and
//will automatically update the "text" and "description" fields
//if another script calls setText or setDescription
//used for smaller prefabs where i need to replace the text
//it can also handle the opening of "detail pages" but this isn't used anymore
public class DetailPageManager : MonoBehaviour
{
    public Transform detailPagePrefab;
    private string text = "Failed to load";
    private string description = "Failed to load";
    private static Transform lastItem = null;
    [HideInInspector]
    public string questId = "";
    [HideInInspector]
    public string character = "";

    public void openDetailPage(){
      if(detailPagePrefab != null){
        GameObject phone = GameObject.Find("Detail Container");
        Transform newItem = Instantiate(detailPagePrefab, phone.transform);
        if(lastItem != null){
          Destroy(lastItem.gameObject);
        }
        lastItem = newItem;
        Transform txt = HelperFunctions.FindChildByRecursion(newItem, "text");
        Transform des = HelperFunctions.FindChildByRecursion(newItem, "description");

        if(txt != null){
          txt.gameObject.GetComponent<TextMeshProUGUI>().text = text;
        }
        if(des != null){
          des.gameObject.GetComponent<TextMeshProUGUI>().text = description;
        }
      }
    }

    public void setText(string txt){
      text = txt;
      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "text");
      if(textChild == null) return;
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = text;

    }

    public void setDescription(string des){
      description = des;
      Transform descriptionChild = HelperFunctions.FindChildByRecursion(transform, "description");
      if(descriptionChild == null) return;
      descriptionChild.gameObject.GetComponent<TextMeshProUGUI>().text = description;
    }

    public void SelectItemForQuest() {
        // highlight the item in the UI
        FindObjectOfType<PhoneScreenManager>().SelectQuestAnswer(questId, character);
    }
}
