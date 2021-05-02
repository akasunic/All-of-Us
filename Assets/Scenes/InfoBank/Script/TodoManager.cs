using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

//this script grabs the InfoItems from GlobalGameInfo
//and then instantiates the journal prefabs from them
//it replaces the information in the prefabs with the saved info
public class TodoManager : MonoBehaviour
{
    public Transform itemPrefab;
    public CharacterResources cr;

    public Image dropdownArrow;
    public GameObject checklistItems;
    public GameObject dropdownImage;

    public Image backgroundImage;

    private GameObject profileImage;

    private Sprite greyDropdown;
    private Sprite redDropdown;
    private Sprite greenDropdown;
    private Sprite greenBackground;

    private bool completed;
    private bool opened;

    private RectTransform titleRTransform;

    List<GlobalGameInfo.ChecklistItem> checklist;

    private float extraPadding = 100f;

    void Awake(){
      cr = new CharacterResources();
      redDropdown = Resources.Load<Sprite>("dropdown_closed_red");
      greyDropdown = Resources.Load<Sprite>("dropdown_open");
      greenDropdown = Resources.Load<Sprite>("dropdown_closed_green");
      greenBackground = Resources.Load<Sprite>("greenbg");
    }
    public void setDetails(GlobalGameInfo.TodoItem item){
      if(cr == null){
        cr = new CharacterResources();
      }

      string title = item.title;
      checklist = item.checklist;
      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "title");
      if(textChild == null) return;
      titleRTransform = textChild.gameObject.GetComponent<RectTransform>();
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = title;
      Transform go = HelperFunctions.FindChildByRecursion(transform, "checklist");
      checklistItems = go.gameObject;
      Transform image = HelperFunctions.FindChildByRecursion(transform, "image");
      profileImage = image.gameObject;
      if(image != null){
        image.gameObject.GetComponent<Image>().sprite = cr.GetSmallIcon(item.character);
      }
      for(int i = 0; i < checklist.Count; i++){
        Transform newItem = Instantiate(itemPrefab, go);
        newItem.GetComponent<ChecklistManager>().setItem(checklist[i]);
      }

      if(!item.showNotification){
        Transform redbubble = HelperFunctions.FindChildByRecursion(transform, "redbubble");
        redbubble.gameObject.SetActive(false);
      }
      

      completed = item.complete;

      if(completed){
        backgroundImage.sprite = greenBackground;
        dropdownImage.gameObject.GetComponent<Image>().sprite = greenDropdown;
      }
      resetLayouts();
      gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(152f, titleRTransform.sizeDelta.y + extraPadding); 
      checklistItems.SetActive(false);

    }

    public void toggleChecklist(){
      if(opened){
        gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(152f,  titleRTransform.sizeDelta.y + extraPadding);
        checklistItems.SetActive(false);
        profileImage.SetActive(false);
        dropdownImage.gameObject.GetComponent<Image>().color = new Color32(255, 255, 255, 255);
        if(completed){
          dropdownImage.gameObject.GetComponent<Image>().sprite = greenDropdown;
        } else {
          dropdownImage.gameObject.GetComponent<Image>().sprite = redDropdown;
        }
        opened = false;
        
      } else {
        opened = true;
        checklistItems.SetActive(true);
        gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(152f, checklist.Count * 30 + titleRTransform.sizeDelta.y + extraPadding);
        profileImage.SetActive(true);
        dropdownImage.gameObject.GetComponent<Image>().sprite = greyDropdown;
        if(completed){
          dropdownImage.gameObject.GetComponent<Image>().color = new Color32(50, 50, 50, 255);
        }
      }
      resetLayouts();
    }

    //we need to reset the layouts or else they look weird when you open or
    //close the dropdown in the quests
    private void resetLayouts(){
      Canvas.ForceUpdateCanvases();
      gameObject.GetComponent<VerticalLayoutGroup>().enabled = false;
      gameObject.GetComponent<VerticalLayoutGroup>().enabled = true;
      Canvas.ForceUpdateCanvases();
      checklistItems.GetComponent<VerticalLayoutGroup>().enabled = false;
      checklistItems.GetComponent<VerticalLayoutGroup>().enabled = true;
      Canvas.ForceUpdateCanvases();
      transform.parent.GetComponent<VerticalLayoutGroup>().enabled = false;
      transform.parent.GetComponent<VerticalLayoutGroup>().enabled = true;
      Canvas.ForceUpdateCanvases();
    }
}
