using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    // Singleton pattern
    private static GameManager instance = null;

    // Static fields
    private static int progress = 0;

    // Singleton pattern
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
        }
        DontDestroyOnLoad(this.gameObject);
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
    // call this function using GameManager.Instance.StartGame()
    public void StartGame()
    {
        progress = 0;
    }

    // call this function using GameManager.Instance.GetProgress()
    public int GetProgress()
    {
        return progress;
    }

    // call this function using GameManager.Instance.IncreaseProgress(int num)
    public void IncreaseProgress(int num)
    {
        if (progress + num >= 0 && progress + num <= 100)
        {
            progress += num;
        }
        else
        {
            progress = 100;
        }
        Debug.Log("New Progress = " + progress);
    }

    // call this function using GameManager.Instance.DecreaseProgress(int num)
    public void DecreaseProgress(int num)
    {
        if (progress - num >= 0 && progress - num <= 100)
        {
            progress -= num;
        }
        else
        {
            progress = 0;
        }
        Debug.Log("New Progress = " + progress);
    }
}
