﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using Ink.UnityIntegration;
using Ink.Runtime;

[CustomEditor(typeof(BasicInkExample))]
[InitializeOnLoad]
public class BasicInkExampleEditor : Editor {

    static BasicInkExampleEditor () {
        BasicInkExample.OnCreateStory += OnCreateStory;
    }

    static void OnCreateStory (Story story) {
        // If you'd like NOT to automatically show the window and attach (your teammates may appreciate it!) then replace "true" with "false" here. 
        InkPlayerWindow window = InkPlayerWindow.GetWindow(true);
        if(window != null) InkPlayerWindow.Attach(story);
    }
	public override void OnInspectorGUI () {
		Repaint();
		base.OnInspectorGUI ();
		var realTarget = target as BasicInkExample;
		var story = realTarget.story;
		InkPlayerWindow.DrawStoryPropertyField(story, new GUIContent("Story"));
	}
}
