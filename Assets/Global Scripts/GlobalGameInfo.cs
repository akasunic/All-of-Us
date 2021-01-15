using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalGameInfo
{
    public class InfoListItem 
    {
        public string title;
        public string description;
        public InfoListItem(string title, string description){
            this.title = title;
            this.description = description;
        }
    }
    public static List<InfoListItem> dialogList = new List<InfoListItem>();
    public static List<InfoListItem> infoList = new List<InfoListItem>();
    public static void addNewItemToDialogList(string title, string description){
        GlobalGameInfo.dialogList.Add(new InfoListItem(title, description));
    }

    public static void addNewItemToInfoList(string title, string description){
        GlobalGameInfo.infoList.Add(new InfoListItem(title, description));
    }
}
