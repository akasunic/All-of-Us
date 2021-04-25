using System.Collections;
using System.Collections.Generic;
using System.IO;
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
                    HelperFunctions.CharacterFromString(notifInfo[0]),
                    int.Parse(notifInfo[1]), notifInfo[2]);
            } else if (notifInfo.Length == 4) {
                Quest q = new Quest();
                q.questGiver = notifInfo[0];
                q.description = notifInfo[2];

                q.questId = ReadQuestTitle(notifInfo[3]);

                GlobalGameInfo.addNewItemToInfoList(notifInfo[0],
                    HelperFunctions.CharacterFromString(notifInfo[0]),
                    int.Parse(notifInfo[1]), notifInfo[2], q);
                // QuestManager.AddQuest(notifInfo[3]);
            } else {
                throw new System.Exception();
            }
        } catch {
            string errormsg = "Error parsing new notification string.\n " +
                "Expected string of the form character_day_description " +
                "or character_day_description_questInfoTxtFile\n" +
                "Instead received:";
            foreach (string s in notifInfo) {
                errormsg += "\n" + s;
            }
            Debug.LogError(errormsg);
        }
    }

    private string ReadQuestTitle(string path) {
        char sep = Path.DirectorySeparatorChar;
        string pwd = Directory.GetCurrentDirectory() + sep;
        string dir = pwd + "Assets" + sep + "Story Files" + sep + path;

        using (StreamReader reader = File.OpenText(dir)) {
            string s = reader.ReadLine();
            reader.Close();
            return s;
        }
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
    //public void AddQuest() {
    //    string questName = _fc.GetStringVariable("new_quest");
    //    string[] questInfo = questName.Split('_');
    //    try {
    //        QuestManager.AddQuest(questInfo[0], questInfo[1], questInfo[2]);
    //    } catch {
    //        string errormsg = "Error parsing new quest string.\n " +
    //            "Expected string of the form questId_questGiver\n " +
    //            "Instead received:";
    //        foreach (string s in questInfo) {
    //            errormsg += "\n" + s;
    //        }
    //        Debug.LogError(errormsg);
    //    }
    //}

    /// <summary>
    /// New version of Add Quests reads quest info from a file.
    /// Switched to file reading as the amount of relevant quest info increased.
    /// </summary>
    public void AddQuest() {
        char sep = Path.DirectorySeparatorChar;
        string pwd = Directory.GetCurrentDirectory() + sep;
        string questFileName = _fc.GetStringVariable("new_quest");
        string dir = pwd + "Assets" + sep + "Story Files" + sep + questFileName;

        Quest q = new Quest();

        using (StreamReader reader = File.OpenText(dir)) {
            // Quest Title
            string line = reader.ReadLine();
            q.questId = line;

            // Quest Giver
            line = reader.ReadLine();
            q.questGiver = line;

            // Health exp, should be a 0 or 1
            line = reader.ReadLine();
            q.incHealth = ParseBitString(line, "health");

            // Time exp
            line = reader.ReadLine();
            q.incTime = ParseBitString(line, "time");

            // Tech exp
            line = reader.ReadLine();
            q.incTech = ParseBitString(line, "tech");

            // Resources exp
            line = reader.ReadLine();
            q.incResources = ParseBitString(line, "resources");

            // Subtasks, not necessarily a fixed amt
            List<string> subtasks = new List<string>();
            line = reader.ReadLine();
            while (line != null && line.Trim() != "") {
                subtasks.Add(line);
                line = reader.ReadLine();
            }
            GlobalGameInfo.addNewItemToTodoList(q.questId,
                HelperFunctions.CharacterFromString(q.questGiver));
            foreach (string subtask in subtasks) {
                GlobalGameInfo.addNewTodoToExistingList(q.questId,
                    subtask);
            }
            reader.Close();
        }

        QuestManager.AddQuest(q);
    }

    private bool ParseBitString(string s, string expTypeMsg = "") {
        switch (s) {
            case "0":
                return false;
            case "1":
                return true;
            default:
                Debug.LogError("Error when parsing " + expTypeMsg +
                    " exp bit string. Expected 0 or 1, but instead received " +
                    s);
                return false;
        }
    }
}
