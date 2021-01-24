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
                        GlobalGameInfo.addNewItemToContactsList(titles[i], descriptions[i]);
                        break;
                    default:
                        GlobalGameInfo.addNewItemToInfoList(titles[i], descriptions[i]); 
                        break;
                }
            }
        }

        switch(whichList){
            case "Dialog":
                fillList(GlobalGameInfo.dialogList);
                break;
            case "Contacts":
                fillList(GlobalGameInfo.contactsList);
                break;
            default:
                fillList(GlobalGameInfo.infoList);
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

    public void createNewListItem(GlobalGameInfo.InfoListItem item){

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
