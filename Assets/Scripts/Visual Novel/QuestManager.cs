using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;

public class QuestManager : MonoBehaviour 
{
    public enum SubmitStatus {
        not_submitted,
        correct,
        incorrect
    }

    public Flowchart redeem_fc;

    public static QuestManager instance;
    public static List<string> activeQuests = new List<string>();

    public static SubmitStatus _status;
    public static string submittedQuest;

    public void Awake() {
        instance = this;
    }

    private void Start() {
        if (redeem_fc != null) {
            switch (_status) {
                case SubmitStatus.correct:
                    RemoveQuest(submittedQuest);
                    submittedQuest = null;
                    _status = SubmitStatus.not_submitted;
                    redeem_fc.ExecuteBlock("Correct Quest");
                    break;
                case SubmitStatus.incorrect:
                    submittedQuest = null;
                    _status = SubmitStatus.not_submitted;
                    redeem_fc.ExecuteBlock("Incorrect Quest");
                    break;
                case SubmitStatus.not_submitted:
                    break;
            }
        }
        
    }

    public static void AddQuest(string quest) {
        if (!activeQuests.Contains(quest)) {
            activeQuests.Add(quest);
        }
    }

    public static void RemoveQuest(string quest) {
        activeQuests.Remove(quest);
    }

    public static void SubmitQuest(string quest) {
        if (activeQuests.Contains(quest)) {
            _status = SubmitStatus.correct;
            submittedQuest = quest;
            // remove? or in Start
        } else {
            _status = SubmitStatus.incorrect;
        }
        // load scene?
        SceneChangeDemoController.LoadPreviousScene();
    }
}
