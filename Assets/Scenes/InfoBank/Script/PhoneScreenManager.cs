using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

//Connects to app buttons, turns the relevant pages on and off
//also handles the starting animation
//also handles the border that incidates "active" app
public class PhoneScreenManager : MonoBehaviour
{
    public GameObject messages;
    public GameObject notes;
    public GameObject contacts;

    public GameObject messagesBorder;
    public GameObject notesBorder;
    public GameObject contactsBorder;

    public GameObject questPanel;

    private GameObject lastSelected;
    private GameObject lastSelectedBorder;

    //animation variables
    private Vector2 outScreen = new Vector2(0, -60);
    private Vector2 inScreen = new Vector2(-295, -70);
    private float inRotation = 15f;
    private float outRotation = 0f;
    private Vector2 inDetailScreen = new Vector2(415, 263);
    private Vector2 outDetailScreen = new Vector2(1000, 263);

    private float seconds = 0.6f;
    private float timer;
    private float percent;
    private Vector2 endPoint;
    private Vector2 startPoint;
    private float endPointRotation;
    private float startPointRotation;
    private Vector2 startDetailPage;
    private Vector2 endDetailPage;
    private Vector2 differenceDetailPage;
    private Vector2 difference;
    private float rotationDifference;

    private bool animatedState = false;

    //the transforms that we're animating
    private RectTransform rt;
    private RectTransform rtDetailPage;

    //phone screen animation vars
    private bool started = false;

    GameObject detailContainer;
    GameObject detailChildContainer;
    GameObject phoneContainer;
    GameObject sectionName; 
 
    void Update(){
      if (started && timer <= seconds) {
        timer += Time.deltaTime;
        percent = (float) EasingFunctionHelpers.easeIn(timer / seconds);
        rt.anchoredPosition = startPoint + difference * percent; 
        rtDetailPage.anchoredPosition = startDetailPage + differenceDetailPage * percent; 
        rt.rotation = Quaternion.Euler(0f, 0f, startPointRotation + rotationDifference * percent);
        //if the animation is on it's last loop, we're done 
        //now it's time to remove the things that animated off screen
        if(timer > seconds && lastSelected == null){
            foreach (Transform child in detailChildContainer.transform) {
                GameObject.Destroy(child.gameObject);
            }
            started = false;
        }
      } 
    }

    void Start()
    {
        messages.SetActive(false);
        notes.SetActive(false);
        contacts.SetActive(false);
        messagesBorder.SetActive(false);
        notesBorder.SetActive(false);
        contactsBorder.SetActive(false);

        lastSelected = null;
        lastSelectedBorder = null;

        //grab objects to animate
        detailContainer = GameObject.Find("Detail Container");
        detailChildContainer = GameObject.Find("Child Container");
        sectionName = GameObject.Find("Section Name");
        phoneContainer = GameObject.Find("Phone");
        rt = phoneContainer.GetComponent<RectTransform>();
        rtDetailPage = detailContainer.GetComponent<RectTransform>();

        if (FindObjectOfType<QuestManager>() != null) {
            switchToPage("quest");
            OpenQuestMenu(); // TESTING
        }
    }

    public void animateItemsIn(){
        if(animatedState) return;
        //start animation stuff
        endDetailPage = inDetailScreen;
        startDetailPage = outDetailScreen;
        endPoint = inScreen;
        startPoint = outScreen;
        startPointRotation = outRotation;
        endPointRotation = inRotation;
        difference = endPoint - startPoint;
        rotationDifference = endPointRotation - startPointRotation;
        differenceDetailPage = endDetailPage - startDetailPage;
        started = true;
        timer = 0;
        animatedState = true;
    }

    public void animateItemsOut(){
        endDetailPage = outDetailScreen;
        startDetailPage = inDetailScreen;
        endPoint = outScreen;
        startPoint = inScreen;
        startPointRotation = inRotation;
        endPointRotation = outRotation;
        difference = endPoint - startPoint;
        rotationDifference = endPointRotation - startPointRotation;
        differenceDetailPage = endDetailPage - startDetailPage;
        started = true;
        timer = 0;
        animatedState = false;
    }

    public void switchToPage(string type){
        animateItemsIn();
        //start toggling pages
        sectionName.GetComponent<TextMeshProUGUI>().text = getSectionName(type);
        GameObject go = null;
        GameObject border = null;
        getGameObject(type, ref go, ref border);
        if(lastSelected != null){
            lastSelected.SetActive(false);
        }
        if(lastSelectedBorder != null){
            lastSelectedBorder.SetActive(false);
        }
        if(go != null){
            go.SetActive(true);
            lastSelected = go;
        }
        if(border != null){
            border.SetActive(true);
            lastSelectedBorder = border;
        }
    }

    private void getGameObject(string type, ref GameObject go, ref GameObject border){
        switch (type.ToLower()){
            case "messages":
                go = messages;
                border = messagesBorder;
                break;
            case "notes":
                go = notes;
                border = notesBorder;
                break;
            case "quest":
                go = notes;
                border = notesBorder;
                break;
            case "contacts":
                go = contacts;
                border = contactsBorder;
                break;
            case "back":
                go = null;
                border = null;
                break;
        }
    }
    private string getSectionName(string type){
        switch (type.ToLower()){
            case "messages":
                return "Messages";
            case "notes":
                return "My Journals";
            case "quest":
                return "My Journals";
            case "contacts":
                return "My Contacts";
            case "back":
                return "Home Screen";
        }
        return null;
    }
    
    void OpenQuestMenu() {
        string questGiver = HelperFunctions.StringFromCharacter(QuestManager.questGiver);

        Transform questPreview = questPanel.transform.
            GetChild(0).Find("Quest Preview Background");
        Quest activeQuest = QuestManager.FindQuestByCharacter(questGiver);
        if (activeQuest == null) {
            Debug.LogError("No active quest found for character " + questGiver);
            return;
        }
        
        questPreview.GetComponentInChildren<TextMeshProUGUI>().
            text = activeQuest.description;

        string imgString = HelperFunctions.StringFromCharacter(activeQuest.questGiver)
            .ToLower();
        Image questGiverImg = questPreview.Find("Quest Giver").GetComponent<Image>();
        
        questGiverImg.sprite =
            Resources.Load<Sprite>(imgString + "_small");
    }

    // private static DetailPageManager selectedQuestObj = null; // work in progress

    public void SelectQuestAnswer(string questId, string character, string description) {
        Debug.Log("Item selected that solves quest " + questId);
        // preview text hard-coded for now
        if (questPanel == null || !questPanel.activeInHierarchy)
            return;
        Transform questMenuContainer = questPanel.transform.GetChild(0);
        Transform selectedQuest = questMenuContainer.Find("Selected Quest Background");

        TextMeshProUGUI _txt = selectedQuest.GetComponentInChildren<TextMeshProUGUI>();
        _txt.text = description;
        _txt.color = Color.black;
        string imgString = character.ToLower() + "_small";

        Image questSolverImg = selectedQuest.Find("Quest Solver").GetComponent<Image>();
        questSolverImg.sprite = Resources.Load<Sprite>(imgString);
        questSolverImg.color = new Color(255, 255, 255, 255);

        QuestManager.submittedQuest = QuestManager.FindQuestById(questId);
    }

    public void SubmitQuest() {
        QuestManager.SubmitQuest(QuestManager.submittedQuest);
    }
}
