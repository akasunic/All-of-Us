using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProgressEvents : MonoBehaviour
{

    public static ProgressEvents instance;

    void Awake() {
        instance = this;
    }

    public event Action<int> onChapterProgress;
    public void ProgressChapter(int chapter) {
        if (onChapterProgress != null) {
            onChapterProgress(chapter);
        }
    }
}
