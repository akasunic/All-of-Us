using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class NotificationItemManager : MonoBehaviour
{
    public TextMeshProUGUI text;
    public GameObject border;
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
        if(border != null){
          border.SetActive(false);
        }
        if(bubble != null){
          bubble.SetActive(false);
        }
      } else {
        if(border != null){
          border.SetActive(true);
        }
        if(bubble != null){
          bubble.SetActive(true);
        }
        text.text = untagged.ToString();
      }
      
    }
}
