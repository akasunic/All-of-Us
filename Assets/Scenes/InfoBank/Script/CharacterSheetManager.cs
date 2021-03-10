using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class CharacterSheetManager : MonoBehaviour
{
    public Transform detailPagePrefab;
    private GlobalGameInfo.CharacterItem character;
    private static Transform lastItem = null;
    
    public void openDetailPage(){
      GameObject phone = GameObject.Find("Detail Container");
      Transform newItem = Instantiate(detailPagePrefab, phone.transform);

      GameObject phoneContainer = GameObject.Find("UI Container");
      RectTransform rt = phoneContainer.GetComponent<RectTransform>();
      rt.anchoredPosition = new Vector2(-200, 0);

      if(lastItem != null){
        Destroy(lastItem.gameObject);
      }

      lastItem = newItem;
      Transform txt = HelperFunctions.FindChildByRecursion(newItem, "text");
      Transform des = HelperFunctions.FindChildByRecursion(newItem, "description");
      Transform job = HelperFunctions.FindChildByRecursion(newItem, "job");
      Transform location = HelperFunctions.FindChildByRecursion(newItem, "location");
      Transform pronouns = HelperFunctions.FindChildByRecursion(newItem, "pronouns");
      Transform age = HelperFunctions.FindChildByRecursion(newItem, "age");
      Transform health = HelperFunctions.FindChildByRecursion(newItem, "healthslider");
      Transform tech = HelperFunctions.FindChildByRecursion(newItem, "techslider");
      Transform time = HelperFunctions.FindChildByRecursion(newItem, "timeslider");
      Transform resources = HelperFunctions.FindChildByRecursion(newItem, "resourcesslider");

      if(txt != null){
        txt.gameObject.GetComponent<TextMeshProUGUI>().text = character.title;
      }
      if(des != null){
        des.gameObject.GetComponent<TextMeshProUGUI>().text = character.description;
      }
      if(location != null){
        location.gameObject.GetComponent<TextMeshProUGUI>().text = character.location;
      }
      if(pronouns != null){
        pronouns.gameObject.GetComponent<TextMeshProUGUI>().text = character.pronouns;
      }
      if(age != null){
        age.gameObject.GetComponent<TextMeshProUGUI>().text = character.age.ToString();
      }
      if(job != null){
        job.gameObject.GetComponent<TextMeshProUGUI>().text = character.job;
      }
      if(health != null){
        health.gameObject.GetComponent<CharacterStatsBarController>().setProgress(character.health);
      }
      if(tech != null){
        tech.gameObject.GetComponent<CharacterStatsBarController>().setProgress(character.tech);
      }
      if(resources != null){
        resources.gameObject.GetComponent<CharacterStatsBarController>().setProgress(character.resources);
      }
      if(time != null){
        time.gameObject.GetComponent<CharacterStatsBarController>().setProgress(character.time);
      }
    }

    public void setDetails(GlobalGameInfo.CharacterItem character){
      this.character = character;

      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "text");
      if(textChild == null) return;
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = character.title;
      
      Transform descriptionChild = HelperFunctions.FindChildByRecursion(transform, "description");
      if(descriptionChild == null) return;
      descriptionChild.gameObject.GetComponent<TextMeshProUGUI>().text = character.job;
    }
}
