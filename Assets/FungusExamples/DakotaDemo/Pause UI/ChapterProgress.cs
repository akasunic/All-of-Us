using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Used for keeping track of progress in a single chapter. Acts as an observer in the chapter progress event system.
/// Keep enabled so it can always update progress.
/// </summary>
public class ChapterProgress : MonoBehaviour
{
    [Tooltip("A list of images (in order) of the progress bar")]
    public List<Image> progressImages;
    [Tooltip("The chapter to keep track of.")]
    public int chapter;
    [Tooltip("The number of quests in this chapter.")]
    public int numQuests;
    /// <summary>
    /// A static dictionary to hold information about all quests across
    /// multiple scenes.
    /// </summary>
    static Dictionary<int, int> questsCompletedDict;
    /// <summary>
    /// An easy reference to the dictionary for updating values relating
    /// to chapter.
    /// </summary>
    int questsCompleted { get {
            questsCompletedDict.TryGetValue(chapter, out int temp);
            return temp;
        } set {
            questsCompletedDict[chapter] = value;
        } }
    [Tooltip("The color to tint the progress bar images as" +
        " quests get completed.")]
    public Color tintColor;

    void Start() {
        if (questsCompletedDict == null)
            questsCompletedDict = new Dictionary<int, int>();

        if (!questsCompletedDict.ContainsKey(chapter)) {
            questsCompletedDict.Add(chapter, 0);
        }
        UpdateChapterUI();
    }

    void OnEnable()
    {
        // add event listener for making progress in the visual novel
        ProgressEvents.onChapterProgress += ProgressChapter;
    }

    private void OnDisable() {
        // remove event listener when disabled
        ProgressEvents.onChapterProgress -= ProgressChapter;
    }

    void ProgressChapter(int chapterNum) {
        if (chapterNum == chapter) {
            if (questsCompleted < numQuests) {
                questsCompleted++;
                UpdateChapterUI();
                // add other things here we want to check/do when
                // finishing a chapter
            }
        }
    }

    void UpdateChapterUI() {
        for (int i = 0; i < progressImages.Count; i++) {
            float progressFrac = (float)questsCompleted / (float)numQuests;
            float incrementFrac = (float)(i + 1) / (float)progressImages.Count;
            // Debug.Log("Progress frac: " + progressFrac + ". Increment frac: " + incrementFrac);
            if (progressFrac >= incrementFrac) {
                progressImages[i].color = tintColor;
            }
        }
    }
}
