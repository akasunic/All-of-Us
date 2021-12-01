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


    public SavedGame(string playerName, string chosenLanguage) {
        name = playerName;
        language = chosenLanguage;
        week = 1;
        day = 1;
        progress = new Dictionary<string, int>();

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

    public void setCharacterDone(string character) {
        progress[character] = 1;
    }

}
