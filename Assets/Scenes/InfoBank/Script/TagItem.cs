using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class TagItem : MonoBehaviour
{
  public Sprite selectedBg;
  public Sprite unselectedBg;
  public Image bg;

  private bool added;
  private bool changed = false;
  private string tag;
  private string info;

  public void setText(string txt, string infoId){
    tag = txt;
    info = infoId;
    Transform textChild = HelperFunctions.FindChildByRecursion(transform, "text");
    if(textChild == null) return;
    textChild.gameObject.GetComponent<TextMeshProUGUI>().text = txt;

    List<string> list = TagManager.GetTags(infoId);    
    changed = DetailPageManager.changedTags != null && DetailPageManager.changedTags.Contains(tag);

    if(list.Contains(txt) && !changed || (!list.Contains(txt) && changed)){
      bg.sprite = selectedBg;
      added = true;
    } 

  }

  public void toggle(){
    added = !added;
    changed = !changed;

    if(added){
      bg.sprite = selectedBg;
      //TagManager.AddTagAndInfo(tag, info);
    } else {
      bg.sprite = unselectedBg;
      //TagManager.RemoveTagAndInfo(tag, info);
    }

    if(!changed){
      DetailPageManager.removeFromChangedTagsList(tag);
    } else {
      DetailPageManager.addToChangedTagsList(tag);
    }
  }

}
