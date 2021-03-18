using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

public class CharacterSheetManager : MonoBehaviour
{
    public Transform detailPagePrefab;
    private GlobalGameInfo.CharacterItem character;
    private static Transform lastItem = null;
    private float seconds = 0.4f;
    private float timer;
    private Vector2 point = new Vector2(-250, -100);
    private float ptRotation = 9f;
    private Vector2 difference;
    private float rotationDifference;
    private Vector2 start;
    private float rotation;
    private float percent;
    private RectTransform rt;

    private Vector2 startDetailPage = new Vector2(600, 0);
    private Vector2 endDetailPage = new Vector2(0, 0);
    private Vector2 differenceDetailPage;
    private RectTransform rtDetailPage;

    private bool started = false;
    private static bool animationDone = false;

    void OnEnable(){
      animationDone = false;
      started = false;
      timer = 0f;
    }
 
    void Update(){
      if (!animationDone && started && timer <= seconds) {
        timer += Time.deltaTime;
        percent = (float) EasingFunctionHelpers.easeIn(timer / seconds);
        rt.anchoredPosition = start + difference * percent; 
        rtDetailPage.anchoredPosition = startDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, rotation + rotationDifference * percent);
      } else if (timer > seconds){
        animationDone = true;
      }
    }
    
    public void openDetailPage(){
      GameObject phone = GameObject.Find("Detail Container");
      GameObject phoneContainer = GameObject.Find("Phone");
      Transform newItem = Instantiate(detailPagePrefab, phone.transform);
      
      if(!animationDone && !started){
        rt = phoneContainer.GetComponent<RectTransform>();
        rtDetailPage = phone.GetComponent<RectTransform>();

        rtDetailPage.anchoredPosition = startDetailPage;

        start = rt.anchoredPosition;
        rotation = rt.rotation.z;

        difference = point-start;
        rotationDifference = ptRotation-rotation;

        differenceDetailPage = endDetailPage - startDetailPage;
      }

      started = true;
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
