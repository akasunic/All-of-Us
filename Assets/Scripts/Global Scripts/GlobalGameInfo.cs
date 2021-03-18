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
    public static List<InfoListItem> infoList = new List<InfoListItem>();
    public static List<CharacterItem> contactsList = new List<CharacterItem>();
    public static void addNewItemToDialogList(string title, string description){
        GlobalGameInfo.dialogList.Add(new InfoListItem(title, description));
    }

    public static void addNewItemToInfoList(string title, string description){
        GlobalGameInfo.infoList.Add(new InfoListItem(title, description));
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
