using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotifcationMessageReceiver : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Notification(string arg) {
        FindObjectOfType<InkMessageHandler>().AddNotification(arg);
    }
}
