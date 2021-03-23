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

    //our animation variables
    private float seconds = 0.4f;
    private float timer;
    private float percent;
    private Vector2 startPoint;
    private Vector2 endPoint = new Vector2(-250, -100);
    private Vector2 difference;
    private float startPointRotation;
    private float endPointRotation = 9f;
    private float rotationDifference;
    private Vector2 startPointDetailPage = new Vector2(600, 0);
    private Vector2 endPointDetailPage = new Vector2(0, 0);
    private Vector2 differenceDetailPage;

    //the transforms that we animate
    private RectTransform rtDetailPage;
    private RectTransform rt;

    //booleans that track animation progress
    private bool started = false;
    private static bool animationDone = false;
    GameObject phone;
    GameObject phoneContainer;

    //when the page gets toggled, we want to reset progress variables
    void OnEnable(){
      animationDone = false;
      started = false;
      timer = 0f;
    }

    void Start(){
      phone = GameObject.Find("Detail Container");
      phoneContainer = GameObject.Find("Phone");
      rt = phoneContainer.GetComponent<RectTransform>();
      rtDetailPage = phone.GetComponent<RectTransform>();
    }
 
    void Update(){
      //animate
      if (!animationDone && started && timer <= seconds) {
        timer += Time.deltaTime;
        percent = (float) EasingFunctionHelpers.easeIn(timer / seconds);
        rt.anchoredPosition = startPoint + difference * percent; 
        rtDetailPage.anchoredPosition = startPointDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, startPointRotation + rotationDifference * percent);
        
        if (timer > seconds){
          animationDone = true;
        }
      } 
    }
    
    public void openDetailPage(){
      Transform newItem = Instantiate(detailPagePrefab, phone.transform);
      
      //animate UI elements in if a different detail overlay hasn't done it already
      if(!animationDone && !started){

        rtDetailPage.anchoredPosition = startPointDetailPage;

        startPoint = rt.anchoredPosition;
        startPointRotation = rt.rotation.z;

        difference = endPoint - startPoint;
        rotationDifference = endPointRotation - startPointRotation;

        differenceDetailPage = endPointDetailPage - startPointDetailPage;
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
