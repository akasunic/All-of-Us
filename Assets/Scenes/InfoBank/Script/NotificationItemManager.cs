using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

/* this can be attached to prefabs that you want
 * to have a "notification" on
 * it attaches itself to the notification event
 * that GlobalGameInfo controls
 * and then when the journal updates, this gets called
 * as a callback, and then it will update the text to
 * the number of notifications, and also turn the bubble on
 * YOU SHOULD ONLY HAVE ONE PREFAB WITH THIS SCRIPT PER SCENE
 */

public class NotificationItemManager : MonoBehaviour
{
    public TextMeshProUGUI text;
    public GameObject bubble;

    void Start(){
      GlobalGameInfo.setNotificationDelegate(setCounter);
      setCounter();
    }

    void OnDestroy(){
      GlobalGameInfo.clearNotificationDelegate();
    }
    public void setCounter(){
      int untagged = GlobalGameInfo.untaggedObjects;

      if(untagged == 0){
        if(bubble != null){
          bubble.SetActive(false);
        }
      } else {
        if(bubble != null){
          bubble.SetActive(true);
        }
        text.text = untagged.ToString();
      }
      
    }
}
