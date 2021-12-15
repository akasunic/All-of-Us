using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VisualNovelTooltipBlockingImage : MonoBehaviour
{
    bool updated = false;
    // Start is called before the first frame update
    void Start()
    {
        this.transform.gameObject.SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        if (!updated && GlobalGameInfo.dictionaryFlag)
        {
            updated = true;
            this.transform.gameObject.SetActive(false);
        }
    }
}
