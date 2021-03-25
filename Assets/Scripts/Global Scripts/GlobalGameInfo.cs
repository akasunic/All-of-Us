using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalGameInfo
{

    public delegate void UpdateNotifications();
    public static UpdateNotifications updateNotifications;

    public static void setNotificationDelegate(UpdateNotifications n){
        updateNotifications = n;
    }
    
    public static void clearNotificationDelegate(){
        updateNotifications = null;
    }

    //DEPRECATED
    public class InfoListItem 
    {
        public string title;
        public string description;
        public InfoListItem(string title, string description){
            this.title = title;
            this.description = description;
        }
    }

    //THIS ONE IS USED FOR INFO ITEMS
    public class InfoItem 
    {
        public string day;
        public string description;
        public string character;
        public string tagIdentifier;

        public InfoItem(string character, string day, string description){
            this.character = character;
            this.day = day;
            this.description = description;
            string unhashedKey = character + day + description;
            this.tagIdentifier = unhashedKey.GetHashCode().ToString();
        }
    }

    public class CharacterItem
    {
        public string title;
        public string description;
        public string job;
        public string location;
        public string pronouns; 
        public int age;
        public float health;
        public float time;
        public float tech;
        public float resources;

        public CharacterItem(        
            string title, 
            string description,
            string job,
            string location,
            string pronouns, 
            int age,
            float health,
            float time,
            float tech,
            float resources){

            this.title = title;
            this.description = description;
            this.job = job;
            this.location = location;
            this.pronouns = pronouns;
            this.age = age;
            this.health = health;
            this.time = time;
            this.tech = tech;
            this.resources = resources;
        }
    }

    public static List<InfoListItem> dialogList = new List<InfoListItem>();
    public static List<InfoItem> infoList = new List<InfoItem>();
    public static List<CharacterItem> contactsList = new List<CharacterItem>();
    public static int untaggedObjects = 0;

    public static void addNewItemToDialogList(
        string title, 
        string description)
    {
        GlobalGameInfo.dialogList.Add(new InfoListItem(title, description));
    }

    public static void decreaseUntaggedObjects(){
        untaggedObjects--;
        if(updateNotifications != null){
            updateNotifications();
        }
    }

    public static void increaseUntaggedObjects(){
        untaggedObjects++;
        if(updateNotifications != null){
            updateNotifications();
        }
    }

    public static void addNewItemToInfoList(
        string character, 
        string day, 
        string description)
    {
        GlobalGameInfo.infoList.Add(new InfoItem(character, day, description));
        increaseUntaggedObjects();
    }

    public static void addNewItemToContactsList(
        string title, 
        string description,
        string job,
        string location,
        string pronouns, 
        int age,
        float health,
        float time,
        float tech,
        float resources){

        GlobalGameInfo.contactsList.Add(new CharacterItem(        
            title, 
            description,
            job,
            location,
            pronouns, 
            age,
            health,
            time,
            tech,
            resources));
        }

}
