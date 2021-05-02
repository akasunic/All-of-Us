using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using TMPro;
using UnityEngine.SceneManagement;

// this script tracks the tags for the list of tags that we have in the journal
// it both adds to the tag list from TagManager and ALSO
// gets tags from the tag list from TagManager
public class TagListManager : MonoBehaviour {
    public string infoId;
    public GameObject tagPrefab;
    private List<GameObject> listOfTags = new List<GameObject>();

    public RectTransform heightTransform;
    public RectTransform parentTransform;

    public GameObject addButtonText;
    public GameObject addTagObject;

    void Start(){
      Canvas.ForceUpdateCanvases(); 
      //var descriptionHeight = parentTransform.rect.height - 10;
      //heightTransform.sizeDelta = new Vector2(132, descriptionHeight );

      TagManager.setDelegate(UpdateList);

      if(SceneManager.GetActiveScene().name != "InfoBank"){
        addTagObject.SetActive(false);
      }

      UpdateList();
    }

    private void OnDestroy() {
      TagManager.removeDelegate(UpdateList);
    }

    public void SetInfoId(string id){
      infoId = id;
    }

    public void AddTagButton(string tag){
      TagManager.AddTagAndInfo(tag , infoId);
      UpdateList();
    }



    public void UpdateList(){
      List<string> list = TagManager.GetTags(infoId);

      for(int i = 0; i < listOfTags.Count; i++){
        Destroy(listOfTags[i]);
      }
      listOfTags.Clear();
      for(int i = 0; i < list.Count; i++) {
        GameObject tagItem = Instantiate(tagPrefab, transform);
        string val = list[i];
        tagItem.GetComponent<DetailPageManager>().setText(val);
        listOfTags.Add(tagItem);
      }

      if(addButtonText == null){
        return;
      }

      if(list.Count == 0){
        addButtonText.SetActive(true);
      } else {
        addButtonText.SetActive(false);
      }

    }
}