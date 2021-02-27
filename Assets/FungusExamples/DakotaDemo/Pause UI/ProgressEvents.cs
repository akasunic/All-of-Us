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
    /// A queue for holding chapter progress events if we've never opened the pause menu before
    /// </summary>
    private Queue<int> progressQ;

    public static ProgressEvents instance;

    void Awake() {
        instance = this;
        progressQ = new Queue<int>();
    }

    void Update() {
        if (progressQ.Count > 0 && onChapterProgress != null) {
            onChapterProgress(progressQ.Dequeue());
        }
    }

    public event Action<int> onChapterProgress;
    public void ProgressChapter(int chapter) {
        if (onChapterProgress != null) {
            onChapterProgress(chapter);
        } else {
            progressQ.Enqueue(chapter);
        }
    }
}
