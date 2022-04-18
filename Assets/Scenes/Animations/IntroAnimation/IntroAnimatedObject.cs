using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.SceneManagement;

public class IntroAnimatedObject : MonoBehaviour
{
    public void MoveToNextScene ()
    {
        SceneManager.LoadScene("PCSetUp");
    }
}