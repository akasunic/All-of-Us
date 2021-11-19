using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

//fills the page with the list items from GlobalGameInfo
public class AddToList : MonoBehaviour
{

    public Transform todoPersonPrefab;
    public Transform listItemPrefab;
    public string whichList = "Dialog";
    private static bool todoListUpdated = false;
    private List<Transform> todoList;

    void Start()
    {
        switch(whichList){
            case "Dialog":
                fillTodoList(GlobalGameInfo.todoList);
                break;
            case "Contacts":
                fillContactList(GlobalGameInfo.contactsList);
                break;
            case "Settings":
                fillSettingsList();
                break;
            case "Dictionary":
                fillDictionaryList();
                break;
            case "Info":
                List<GlobalGameInfo.InfoItem> list = new List<GlobalGameInfo.InfoItem>(GlobalGameInfo.infoList);
                list.Reverse();
                fillInfoList(list);
                break;
        }
    }

    private void fillTodoList(List<GlobalGameInfo.TodoItem> list){
        list.Add(list[0]);
        todoList = new List<Transform>(); 
        if(list.Count == 0){
            return;
        }
        
        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);
        Transform contentParent = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        int defaultItemShift = TodoManager.backgroundImageDefaultHeight;
        // Hardcoded value in the scene, header is 100 units height
        int defaultHeaderShift = 100;
        int todoPersonY = -40;
        int todoPersonX = 30;
        // Give 40 units of spacing between each person
        int spacing = 40;
        CharacterResources cr = new CharacterResources();
        for (int i = 0; i < list.Count; i++) {
            Transform newTodoPerson = Instantiate(todoPersonPrefab, contentParent);
            // Update a person's header
            Transform header = newTodoPerson.Find("Header");
            header.gameObject.SetActive(true);
            Transform characterName = header.transform.Find("Character/CharacterName");
            Transform characterPic = header.transform.Find("Character/CharacterPic");
            Transform daysPassed = header.transform.Find("DaysPassed");
            characterPic.gameObject.GetComponent<Image>().sprite = cr.GetSmallIcon(list[i].character);
            characterName.gameObject.GetComponent<Text>().text = cr.GetName(list[i].character).ToUpper();

            // Set person header's y position
            Vector3 newPos = new Vector3(todoPersonX, todoPersonY, 0);
            newTodoPerson.localPosition = newPos;

            // Create the todo item list;
            Transform newItemListParent = newTodoPerson.Find("TodoItemList");
            Transform newItem = Instantiate(listItemPrefab, newItemListParent);
            newItem.GetComponent<TodoManager>().setDetails(list[i]);
            Vector3 newItemPos = new Vector3(0, 0, 0);
            newItem.localPosition = newItemPos;

            todoList.Add(newItem);

            foreach (Transform child in daysPassed)
            {
                child.gameObject.GetComponent<Image>().color = cr.GetColor(list[i].character);
            }
            todoPersonY -= (spacing + defaultHeaderShift + defaultItemShift);
        }
        RectTransform rt = contentParent.GetComponent<RectTransform>();
        rt.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, (-40 - todoPersonY));
    }

    public void Update()
    {
        if (todoListUpdated)
        {
            updateTodoList();
        }
        todoListUpdated = false;
    }

    public static void ToggleTodoListUpdated()
    {
        todoListUpdated = true;
    }

    public void updateTodoList()
    {
        float shift = 0;
        int defaultShift = TodoManager.backgroundImageDefaultHeight;
        for (int i = 0; i < todoList.Count; i++)
        {
            float defaultPos = -i * defaultShift;
            TodoManager tm = todoList[i].gameObject.GetComponent<TodoManager>();
            Vector3 curPos = todoList[i].localPosition;
            Vector3 newPos = new Vector3(curPos.x, defaultPos - shift, curPos.z);
            todoList[i].localPosition = newPos;
            if (tm.isOpened())
            {
                shift += (tm.getOpenedHeight() - tm.getDefaultHeight());
            }
        }
        Transform contentParent = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        RectTransform rt = contentParent.GetComponent<RectTransform>();
        rt.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, (-40 - todoPersonY));
    }

    private void fillSettingsList()
    {
        // Fill in with settings list
    }

    private void fillDictionaryList()
    {
        // Fill in with Dictionary list
    }

    private void fillInfoList(List<GlobalGameInfo.InfoItem> list){
        
        if(list.Count == 0){
            return;
        }

        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);

        Dictionary<string, List<GlobalGameInfo.InfoItem>> dict = new Dictionary<string, List<GlobalGameInfo.InfoItem>>();
        
        for(int i = 0; i < list.Count; i++){
            string character = list[i].character;
            if(!dict.ContainsKey(character)){
                dict.Add(character, new List<GlobalGameInfo.InfoItem>());
            }
            List<GlobalGameInfo.InfoItem> l = dict[character];
            l.Add(list[i]);
        }

        Transform go = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        foreach( KeyValuePair<string, List<GlobalGameInfo.InfoItem>> elem in dict )
        {
            Transform newItem = Instantiate(listItemPrefab, go);
            newItem.GetComponent<InfoManager>().setDetails(elem.Key, elem.Value);
        }
        
    }

    private void fillContactList(Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> list){
        if(list.Count == 0){return;}
        
        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);
        Transform go = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        bool firstitem = true;
        
        foreach(KeyValuePair<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> entry in list)
        {
            Transform newItem = Instantiate(listItemPrefab, go);
            newItem.GetComponent<CharacterSheetManager>().setDetails(entry.Value);
            if(firstitem){
                newItem.GetComponent<CharacterSheetManager>().openDetailPage();
                firstitem = false;
            }
        }
    }
}
