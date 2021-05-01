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
    CharacterResources cr;

    void Start(){
      phone = GameObject.Find("Child Container");
      phoneContainer = GameObject.Find("Phone");
      cr = new CharacterResources();
    }

    public void setDetails(string characterName, List<GlobalGameInfo.InfoItem> items){

      if(cr == null){
        cr = new CharacterResources();
      }

      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "Name");
      if(textChild == null) return;
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = characterName;
      Transform image = HelperFunctions.FindChildByRecursion(transform, "profileImage");
      if(image != null){
        image.gameObject.GetComponent<Image>().sprite = cr.GetSmallIcon(items[0].characterEnum);
      }

      Transform go = this.gameObject.transform.Find("Panel");
      for(int i = 0; i < items.Count; i++){
         Transform newItem = Instantiate(itemPrefab, go);
          newItem.GetComponent<DetailPageManager>().setInfo(items[i]);
           
          DetailPageManager itemDetails = newItem.GetComponent<DetailPageManager>();
          if(items[i].quest != null){
            itemDetails.questId = items[i].quest.questId;
          }
          itemDetails.character = items[i].characterEnum;

          Transform tagsList = HelperFunctions.FindChildByRecursion(newItem, "tagsList");
          if(tagsList != null){
            Debug.Log("found tagslist");
            tagsList.GetComponent<TagListManager>().SetInfoId(items[i].tagIdentifier);
            }
            //EventTrigger trigger = newItem.GetComponent<EventTrigger>();
            //EventTrigger.Entry entry = new EventTrigger.Entry();
            //entry.eventID = EventTriggerType.PointerClick;
            //entry.callback.AddListener((data) => itemDetails.SelectItem());
            //trigger.triggers.Add(entry);
        }
    }

    //string questId;
    //string character;
    //string description;

    //public void SelectItemForQuest() {
    //    // highlight the item in the UI
    //    Debug.Log(GetComponent<Image>().color);
    //    DeselectItemInUI();
    //    FindObjectOfType<PhoneScreenManager>().SelectQuestAnswer(questId, character, description);
    //    GetComponent<Image>().color = new Color(246f / 255f, 224f / 255f, 148f / 255f);
    //    selectedItem = this;
    //    Debug.Log(GetComponent<Image>().color);
    //}

    //private static InfoManager selectedItem;
    //private void DeselectItemInUI() {
    //    if (selectedItem == null)
    //        return;
    //    selectedItem.GetComponent<Image>().color = Color.white;
    //    selectedItem = null;
    //}
}
