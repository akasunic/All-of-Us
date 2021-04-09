using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using TMPro;

//this script grabs the InfoItems from GlobalGameInfo
//and then instantiates the journal prefabs from them
//it replaces the information in the prefabs with the saved info
public class InfoManager : MonoBehaviour
{
    public Transform itemPrefab;
    private static Transform lastItem = null;

    GameObject phone;
    GameObject phoneContainer;

    void Start(){
      phone = GameObject.Find("Child Container");
      phoneContainer = GameObject.Find("Phone");
    }

    public void setDetails(string characterName, List<GlobalGameInfo.InfoItem> items){

      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "Name");
      if(textChild == null) return;
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = characterName;
      Transform go = this.gameObject.transform.Find("Panel");
      for(int i = 0; i < items.Count; i++){
          Transform newItem = Instantiate(itemPrefab, go);
          DetailPageManager itemDetails = newItem.GetComponent<DetailPageManager>();
          itemDetails.setText("Day " + items[i].day);
          itemDetails.setDescription(items[i].description);
          itemDetails.questId = items[i].quest_id;
          Transform tagsList = HelperFunctions.FindChildByRecursion(newItem, "tagsList");
          if(tagsList != null){
            tagsList.GetComponent<TagListManager>().SetInfoId(items[i].tagIdentifier);
            }
            //EventTrigger trigger = newItem.GetComponent<EventTrigger>();
            //EventTrigger.Entry entry = new EventTrigger.Entry();
            //entry.eventID = EventTriggerType.PointerClick;
            //entry.callback.AddListener((data) => itemDetails.SelectItem());
            //trigger.triggers.Add(entry);
        }
    }
}
