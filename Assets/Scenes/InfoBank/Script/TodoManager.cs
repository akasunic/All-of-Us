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
    public Image checklistArrowImage;
    public Image checklistDoneImage;

    public static int backgroundImageDefaultHeight = 100;
    private int backgroundOpenedHeight;

    private int checklistTopPadding;
    private int checklistItemHeight;

    private GameObject profileImage;

    private Sprite greyDropdown;
    private Sprite redDropdown;
    private Sprite greenDropdown;
    private Sprite greenBackground;

    private bool completed;
    private bool opened;

    private RectTransform titleRTransform;

    List<GlobalGameInfo.ChecklistItem> checklist;

    private Transform checklistTransform = null;
    private Transform dropdownTransformArrow = null;
    private Transform dropdownTransformDone = null;

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
      GridLayoutGroup glg = go.GetComponent<GridLayoutGroup>();
        checklistItemHeight = (int)glg.cellSize.y;
        checklistTopPadding = (int)glg.padding.top;
        // How big the opened image should be? 
        backgroundOpenedHeight = checklistTopPadding + checklist.Count * checklistItemHeight + backgroundImageDefaultHeight + (int)titleRTransform.rect.height;
        backgroundImage.gameObject.GetComponent<RectTransform>().SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, backgroundImageDefaultHeight);
        for (int i = 0; i < checklist.Count; i++){
        Transform newItem = Instantiate(itemPrefab, go);
        newItem.GetComponent<ChecklistManager>().setItem(checklist[i]);
      }
      
      completed = item.complete;

      if(completed){
        backgroundImage.sprite = greenBackground;
        dropdownImage.gameObject.GetComponent<Image>().sprite = greenDropdown;
      }
      gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(152f, titleRTransform.sizeDelta.y + extraPadding); 
      checklistItems.SetActive(false);

        checklistTransform = this.transform.Find("content/checklist");
        dropdownTransformArrow = this.transform.Find("content/Panel for dropdown/dropdownArrow");
        dropdownTransformDone = this.transform.Find("content/Panel for dropdown/dropdownDone");
    }

    public void toggleChecklist(){
        AddToList.ToggleTodoListUpdated();
        Debug.Log("Add to list toggled");
        if (opened)
        {
            checklistItems.SetActive(false);
            opened = false;
            backgroundImage.gameObject.GetComponent<RectTransform>().SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, backgroundImageDefaultHeight);

        } 
        else 
        {
            opened = true;
            checklistItems.SetActive(true);
            backgroundImage.gameObject.GetComponent<RectTransform>().SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, backgroundOpenedHeight);
        }
    }

    public void Update()
    {
        if (checklistTransform != null && dropdownTransformArrow != null && dropdownTransformDone != null)
        {
            bool allChecked = true;
            foreach (Transform child in checklistTransform)
            {
                allChecked = allChecked && child.gameObject.GetComponent<ChecklistManager>().isChecked();
            }
            if (allChecked)
            {
                dropdownTransformArrow.gameObject.SetActive(false);
                dropdownTransformDone.gameObject.SetActive(true);
            }
            else
            {
                dropdownTransformDone.gameObject.SetActive(false);
                dropdownTransformArrow.gameObject.SetActive(true);
            }
        } 
    }

    public int getDefaultHeight()
    {
        return backgroundImageDefaultHeight;
    }
    public int getOpenedHeight()
    {
        return backgroundOpenedHeight;
    }

    public bool isOpened()
    {
        return opened;
    }

}
