using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

[Serializable]
public class SavedGame : object {

    private string name;
    private int week;
    private int day;
    private string language;
    private Dictionary<string, int> progress;
    // private List<GlobalGameInfo.TodoItem> todoList;
    // private List<GlobalGameInfo.InfoItem> infoList;
    // private Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> contactsList;


    public SavedGame(string playerName, string chosenLanguage) {
        name = playerName;
        language = chosenLanguage;
        week = 1;
        day = 1;
        progress = new Dictionary<string, int>();
        // todoList = new List<GlobalGameInfo.TodoItem>();
        // infoList = new List<GlobalGameInfo.InfoItem>();
        // contactsList = new Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem>();

        progress.Add("Rashad", 0);
        progress.Add("MrsLee", 0);
        progress.Add("Lila", 0);
        progress.Add("Elisa", 0);
        progress.Add("MrCalindas", 0);
    }

    public string getName() {
        return name;
    }

    public void setName(string newPlayerName) {
        name = newPlayerName;
    }

    public int getWeek() {
        return week;
    }

    public void incWeek() {
        week += 1;
    }

    public int getDay() {
        return day;
    }

    public void incDay() {
        day += 1;
        if (day > 3) {
            this.incWeek();
            day = 0;
        }
    }

    public string getLanguage() {
        return language;
    }

    public void setLanguage(string newLanguage) {
        language = newLanguage;
    }

    public Dictionary<string, int> getProgress() {
        return progress;
    }

    public bool getCharacterProgress(string character) {
        if (progress.ContainsKey(character)) {
            return progress[character] == 1;
        }
        return false;
    }

    // public List<GlobalGameInfo.TodoItem> getTodoItems() {
    //     return todoList;
    // }

    // public void setTodoItems(List<GlobalGameInfo.TodoItem> items) {
    //     todoList = items;
    // }

    // public List<GlobalGameInfo.InfoItem> getInfoItems() {
    //     return infoList;
    // }

    // public void setInfoItems(List<GlobalGameInfo.InfoItem> items) {
    //     infoList = items;
    // }

    // public Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> getContactItems() {
    //     return contactsList;
    // }

    // public void setContactItems(Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> items) {
    //     contactsList = items;
    // }

    public void setCharacterDone(string character) {
        progress[character] = 1;
    }

}
