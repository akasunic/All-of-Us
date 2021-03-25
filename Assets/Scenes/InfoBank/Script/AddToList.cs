using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class AddToList : MonoBehaviour
{
    // Start is called before the first frame update
    public string[] titles;
    public string[] descriptions;
    public string[] locations;
    public string[] jobs;
    public string[] pronouns;
    public int[] age;
    public float[] health;
    public float[] tech;
    public float[] time;
    public float[] resources;

    public Transform listItemPrefab;
    public string whichList = "Dialog";

    void Start()
    {
        if(titles.Length != descriptions.Length){
            Debug.Log("Placeholder title and description lengths need to be equal.");
        } else {
            for(int i = 0; i < titles.Length; i++){
                switch(whichList){
                    case "Dialog":
                        GlobalGameInfo.addNewItemToDialogList(titles[i], descriptions[i]);
                        break;
                    case "Contacts":
                        GlobalGameInfo.addNewItemToContactsList(
                            titles[i], 
                            descriptions[i],
                            jobs[i],
                            locations[i],
                            pronouns[i],
                            age[i],
                            health[i],
                            time[i],
                            tech[i],
                            resources[i]);
                        break;
                    default:
                        GlobalGameInfo.addNewItemToInfoList(titles[i], age[i].ToString(), descriptions[i]); 
                        break;
                }
            }
        }

        switch(whichList){
            case "Dialog":
                fillList(GlobalGameInfo.dialogList);
                break;
            case "Contacts":
                fillContactList(GlobalGameInfo.contactsList);
                break;
            default:
                fillInfoList(GlobalGameInfo.infoList);
                break;
        }
    }

    private void fillList(List<GlobalGameInfo.InfoListItem> list){
        if(list.Count == 0){return;}
        
        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);
        Transform go = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        for(int i = 0; i < list.Count; i++){
            Transform newItem = Instantiate(listItemPrefab, go);
            newItem.GetComponent<DetailPageManager>().setText(list[i].title);
            newItem.GetComponent<DetailPageManager>().setDescription(list[i].description);
        }
    }

    private void fillInfoList(List<GlobalGameInfo.InfoItem> list){
        if(list.Count == 0){return;}

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

    private void fillContactList(List<GlobalGameInfo.CharacterItem> list){
        if(list.Count == 0){return;}
        
        Destroy(this.gameObject.transform.Find("Scroll View/Viewport/Content/No Info Yet").gameObject);
        Transform go = this.gameObject.transform.Find("Scroll View/Viewport/Content");
        for(int i = 0; i < list.Count; i++){
            Transform newItem = Instantiate(listItemPrefab, go);
            newItem.GetComponent<CharacterSheetManager>().setDetails(list[i]);
            if(i == 0){
                newItem.GetComponent<CharacterSheetManager>().openDetailPage();
            }
        }
    }

    public void createNewListItem(GlobalGameInfo.InfoListItem item){

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
