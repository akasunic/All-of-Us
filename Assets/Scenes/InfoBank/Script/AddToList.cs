using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

//fills the page with the list items from GlobalGameInfo
public class AddToList : MonoBehaviour
{

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
        todoList = new List<Transform>(); 
        if(list.Count == 0){
            return;
        }
        
        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);

        CharacterResources cr = new CharacterResources();
        Transform header = this.gameObject.transform.Find("Scroll View/Viewport/Content/Header");
        header.gameObject.SetActive(true);
        Transform characterName = header.transform.Find("Character/CharacterName");
        
        Transform characterPic = header.transform.Find("Character/CharacterPic");
        characterPic.gameObject.GetComponent<Image>().sprite = cr.GetSmallIcon(list[0].character);
        characterName.gameObject.GetComponent<Text>().text = cr.GetName(list[0].character).ToUpper();

        Transform go = this.gameObject.transform.Find("Scroll View/Viewport/Content/TodoItemList");
        int defaultShift = TodoManager.backgroundImageDefaultHeight;
        for(int i = 0; i < list.Count; i++){
            Transform newItem = Instantiate(listItemPrefab, go);
            newItem.GetComponent<TodoManager>().setDetails(list[i]);
            Vector3 curPos = newItem.localPosition;
            Vector3 newPos = new Vector3(curPos.x, curPos.y + defaultShift * i, curPos.z);
            newItem.localPosition = newPos;

            todoList.Add(newItem);
        }
        Transform newItem2 = Instantiate(listItemPrefab, go);
        newItem2.GetComponent<TodoManager>().setDetails(list[0]);
    }

    public void Update()
    {
        updateTodoList();
        todoListUpdated = false;
    }

    public static void ToggleTodoListUpdated()
    {
        todoListUpdated = true;
    }

    public void updateTodoList()
    {
        float shift = 0;
        for (int i = 0; i < todoList.Count; i++)
        {
            TodoManager tm = todoList[i].gameObject.GetComponent<TodoManager>();
            if (shift > 0)
            {
                Vector3 curPos = todoList[i].localPosition;
                Vector3 newPos = new Vector3(curPos.x, curPos.y + shift, curPos.z);
                todoList[i].localPosition = newPos;
            }
            if (tm.isOpened())
            {
                shift += (tm.getOpenedHeight() - tm.getDefaultHeight());
            }
        }
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
