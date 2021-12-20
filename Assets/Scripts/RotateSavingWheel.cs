using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class RotateSavingWheel : MonoBehaviour
{
    private float secondsPassed;
    // Start is called before the first frame update

    void Start()
    {
        secondsPassed = 0.0f;

        StartCoroutine(RotateWheel());
        
        if (GlobalGameInfo.weekEndedFlag) {
            // TODO start end of week scene and from there activate the StartWeek Scene again
            GlobalGameInfo.weekEndedFlag = false;
            SceneManager.LoadScene("BlockParty");
        } else {
            SceneManager.LoadScene("Basic2DMap");
        }
    }
    IEnumerator RotateWheel()
    {

        while (true)
        {
            this.transform.Rotate(0.0f, 0.0f, -5f, Space.Self);
            yield return new WaitForSeconds(0.1f);
            if (secondsPassed > 5.0f)
            {
                yield break;
            }
            else
            {
                secondsPassed += 0.1f;
            }
        }
    }
}
