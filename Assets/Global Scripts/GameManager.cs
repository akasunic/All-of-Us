using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    // Singleton pattern
    private static GameManager instance = null;

    // Static fields
    private int progress = 0;

    // Create an instance if necessary.
    // Or destroy this to keep singleton pattern.
    private void Awake()
    {
        if (instance)
        {
            Destroy(this.gameObject);
        }
        else
        {
            instance = this;
            DontDestroyOnLoad(this.gameObject);
        }
    }

    // Instance to use
    public static GameManager Instance
    {
        get
        {
            return instance;
        }
    }

    // Start Game
    // Set the initial values
    public void StartGame()
    {
        progress = 0;
    }

    public int GetProgress()
    {
        return progress;
    }
}
