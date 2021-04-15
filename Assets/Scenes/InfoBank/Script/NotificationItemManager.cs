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
 */
public class NotificationItemManager : MonoBehaviour
{
    public TextMeshProUGUI text;
    public TextMeshProUGUI updatedText;
    public GameObject bubble;

    public GlobalGameInfo.NOTIFICATION notificationType;

    void Start(){

      GlobalGameInfo.setNotificationDelegate(setCounter);
      updateUIElements();
    }

    void OnDestroy(){
      GlobalGameInfo.clearNotificationDelegate();
    }
    public void setCounter(GlobalGameInfo.NOTIFICATION n){

      if(notificationType == GlobalGameInfo.NOTIFICATION.PHONE){
        if(n == GlobalGameInfo.NOTIFICATION.INFO){
          updatedText.text = "MyJournal Updated";
        } else if (n ==GlobalGameInfo.NOTIFICATION.TODO){
          updatedText.text = "MyTodo Updated";
        }
      }
      updateUIElements();
    }

    public void updateUIElements(){
      int untagged = GlobalGameInfo.getNotificationNumber(notificationType);
      Debug.Log(notificationType + ", " + untagged);
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
