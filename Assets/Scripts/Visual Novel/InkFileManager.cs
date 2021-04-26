using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InkFungus;
using Fungus;
using UnityEngine.SceneManagement;

public class InkFileManager : MonoBehaviour
{
    [Tooltip("Ink-Fungus narrative director for this scene.")]
    private NarrativeDirector narrativeDirector;
    [Tooltip("Fungus flowchart containing relevant info.")]
    private Flowchart _fc;

    public InkFileManager instance;

    private void Awake() {
        if (!instance) {
            instance = this;
            DontDestroyOnLoad(gameObject);
            SceneManager.activeSceneChanged += OnSceneChanged;
        }
    }

    // Start is called before the first frame update
    void Start() {
        _fc = GetComponent<Flowchart>();
        if (!GetVisualNovelComponents()) // if we couldn't find the VN components
            return;

        // for now, before I get everything set up
        _fc.ExecuteBlock("On Variables Loaded");
    }

    /// <summary>
    /// Sets the NarrativeDirector and Flowchart variables to those in the scene.
    /// </summary>
    /// <returns>true if both components are found, false otherwise</returns>
    bool GetVisualNovelComponents() {
        _fc = GameObject.Find("Variables Flowchart").
            GetComponent<Flowchart>();
        narrativeDirector = FindObjectOfType<NarrativeDirector>();
        return (_fc && narrativeDirector);
    }

    private void OnSceneChanged(Scene prev, Scene next) {
        GetVisualNovelComponents(); // return here?
    }
}
