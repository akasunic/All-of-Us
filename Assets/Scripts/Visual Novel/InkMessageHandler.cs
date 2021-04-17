using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;

/// <summary>
/// Handles the receiving functions for the Flowchart Ink message handlers.
/// </summary>
[RequireComponent(typeof(Flowchart))]
public class InkMessageHandler : MonoBehaviour
{
    private Flowchart _fc;

    private void Start() {
        _fc = GetComponent<Flowchart>();
    }

    /// <summary>
    /// Adds a new notifcation to the notifications list
    /// </summary>
    public void AddNotification() {
        string notifString = _fc.GetStringVariable("notification");
        string[] notifInfo = notifString.Split('_');

        try {
            if (notifInfo.Length == 3) {
                GlobalGameInfo.addNewItemToInfoList(notifInfo[0], 
                    CharacterFromString(notifInfo[0]), int.Parse(notifInfo[1]), notifInfo[2]);
            } else if (notifInfo.Length == 4) {
                Quest q = new Quest();
                q.questGiver = notifInfo[0];
                q.questId = notifInfo[3];
                q.description = notifInfo[2];
                GlobalGameInfo.addNewItemToInfoList(notifInfo[0],
                    CharacterFromString(notifInfo[0]), int.Parse(notifInfo[1]), 
                    notifInfo[2], q);
                // QuestManager.AddQuest(notifInfo[3]);
            } else {
                throw new System.Exception();
            }
        } catch {
            string errormsg = "Error parsing new notification string.\n " +
                "Expected string of the form character_day_description " +
                "or character_day_description_questId\n" +
                "Instead received:";
            foreach (string s in notifInfo) {
                errormsg += "\n" + s;
            }
            Debug.LogError(errormsg);
        }
    }

    CharacterResources.CHARACTERS CharacterFromString(string character) {
        switch (character.ToLower()) {
            case "rashad":
                return CharacterResources.CHARACTERS.RASHAD;
            case "lila":
                return CharacterResources.CHARACTERS.LILA;
            case "calindas":
                return CharacterResources.CHARACTERS.CALINDAS;
            case "elisa":
                return CharacterResources.CHARACTERS.ELISA;
            default:
                if (character.ToLower().Contains("calindas")) {
                    return CharacterResources.CHARACTERS.CALINDAS;
                }
                return CharacterResources.CHARACTERS.RASHAD;
        }
    }

    string StringFromCharacter(CharacterResources.CHARACTERS character) {
        switch (character) {
            case CharacterResources.CHARACTERS.RASHAD:
                return "Rashad";
            case CharacterResources.CHARACTERS.LILA:
                return "Lila";
            case CharacterResources.CHARACTERS.CALINDAS:
                return "Mr. Calindas";
            case CharacterResources.CHARACTERS.ELISA:
                return "Elisa";
        }
        return "Rashad";
    }

    /// <summary>
    /// Adds a a new contact to the contacts list
    /// </summary>
    public void AddContact() {
        string contactString = _fc.GetStringVariable("new_contact");
        contactString = contactString.ToLower();

        if (contactString.Contains("rashad")) {
            GlobalGameInfo.addNewItemToContactsList(CharacterResources.Rashad());
        } else if (contactString.Contains("lila")) {
            GlobalGameInfo.addNewItemToContactsList(CharacterResources.Lila());
        } else if (contactString.Contains("calindas")) {
            GlobalGameInfo.addNewItemToContactsList(CharacterResources.Calindas());
        } else if (contactString.Contains("elisa")) {
            GlobalGameInfo.addNewItemToContactsList(CharacterResources.Lila());
        }
        // else if blah blah blah
    }

    /// <summary>
    /// Adds a quest to the quest list. Currently should just be the name of the quest
    /// that we'll look up later.
    /// </summary>
    public void AddQuest() {
        string questName = _fc.GetStringVariable("new_quest");
        string[] questInfo = questName.Split('_');
        try {
            QuestManager.AddQuest(questInfo[0], questInfo[1], questInfo[2]);
        } catch {
            string errormsg = "Error parsing new quest string.\n " +
                "Expected string of the form questId_questGiver\n " +
                "Instead received:";
            foreach (string s in questInfo) {
                errormsg += "\n" + s;
            }
            Debug.LogError(errormsg);
        }
    }
}
