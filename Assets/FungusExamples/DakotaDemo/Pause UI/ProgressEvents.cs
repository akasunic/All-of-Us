using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Event system subject for chapter progress.
/// </summary>
public class ProgressEvents : MonoBehaviour
{
    /// <summary>
    /// A queue for holding chapter progress events if we've never opened the pause menu before.
    /// Static to hold values across scenes
    /// </summary>
    private static Queue<int> progressQ;

    public static ProgressEvents instance;

    void Awake() {
        instance = this;
        if (progressQ == null)
            progressQ = new Queue<int>();
    }

    void Update() {
        if (progressQ.Count > 0 && onChapterProgress != null) {
            // If we made progress while listeners were inactive
            // tell the active listeners that we made progress.
            onChapterProgress(progressQ.Dequeue());
        }
    }

    public static event Action<int> onChapterProgress;
    public static void ProgressChapter(int chapter) {
        if (onChapterProgress != null) {
            onChapterProgress(chapter);
        } else {
            // Progress event listeners are inactive, so queue them for later.
            progressQ.Enqueue(chapter);
        }
    }
}
