using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;

[RequireComponent(typeof(Flowchart))]
public class InkMessageHandler : MonoBehaviour
{
    private Flowchart _fc;

    private void Start() {
        _fc = GetComponent<Flowchart>();
    }

    public void AddNotification() {
        string notifString = _fc.GetStringVariable("notification");
        string[] notifInfo = notifString.Split('_');

        GlobalGameInfo.addNewItemToInfoList(notifInfo[0], notifInfo[1], notifInfo[2]);
    }
}
