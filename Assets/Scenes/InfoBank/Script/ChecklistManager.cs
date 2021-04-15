using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

//this is attached to instantiated prefabs and
//will automatically update the UI components in the prefab
//if another script calls setText/setItem/setCheckmark, it will 
//modify the item accordingly
public class ChecklistManager : MonoBehaviour
{
    public Sprite checkedSprite;
    public Sprite uncheckedSprite;

    public Image checkmark;

    GlobalGameInfo.ChecklistItem item;

    public void setItem(GlobalGameInfo.ChecklistItem ci){
      item = ci;
      setText(item.title);
      setCheckmark(item.completed);
    }

    public void setText(string text){
      Transform textChild = HelperFunctions.FindChildByRecursion(transform, "text");
      if(textChild == null) return;
      textChild.gameObject.GetComponent<TextMeshProUGUI>().text = text;
    }

    public void setCheckmark(bool isDone){
      if(isDone){
        checkmark.sprite = checkedSprite;
      } else {
        checkmark.sprite = uncheckedSprite;
      }
    }
}
