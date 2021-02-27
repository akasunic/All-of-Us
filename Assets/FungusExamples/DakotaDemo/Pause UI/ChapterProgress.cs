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
    int questsCompleted = 0;
    [Tooltip("The color to tint the progress bar images as" +
        " quests get completed.")]
    public Color tintColor;

    void OnEnable()
    {
        ProgressEvents.instance.onChapterProgress += ProgressChapter;
    }

    private void OnDisable() {
        ProgressEvents.instance.onChapterProgress -= ProgressChapter;
    }

    void ProgressChapter(int chapterNum) {
        if (chapterNum == chapter) {
            if (questsCompleted < numQuests) {
                questsCompleted++;
                UpdateChapterUI();
                // add other things here we want to check/do
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
