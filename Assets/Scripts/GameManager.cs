using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static readonly int MAX_ENGAGEMENT = 15;

    // Singleton pattern
    private static GameManager instance = null;

    // Static fields
    private static int engagement = 0;

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
        engagement = 0;
    }

    // call this function using GameManager.Instance.GetEngagement()
    public int GetEngagement()
    {
        return engagement;
    }

    // call this function using GameManager.Instance.IncreaseEngagement()
    public void IncreaseEngagement()
    {
        if (engagement < MAX_ENGAGEMENT)
        {
            engagement++;
        }
        Debug.Log("New Engagement = " + engagement);
    }
}
