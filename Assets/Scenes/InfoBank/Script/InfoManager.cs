using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

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
          newItem.GetComponent<DetailPageManager>().setText("Day " + items[i].day);
          newItem.GetComponent<DetailPageManager>().setDescription(items[i].description);
           
          Transform tagsList = HelperFunctions.FindChildByRecursion(newItem, "tagsList");
          if(tagsList != null){
            Debug.Log("found tagslist");
            tagsList.GetComponent<TagListManager>().SetInfoId(items[i].tagIdentifier);
          }
          
      }
    }
}
