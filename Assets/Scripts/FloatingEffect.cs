using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloatingEffect : MonoBehaviour
{
    private Vector3 startPosition;
    private static readonly int speed = 2;
    private int degree;
    float radian;

    // Start is called before the first frame update
    void Start()
    {
        startPosition = this.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        degree += speed;
        degree %= 360;
        radian = degree * Mathf.PI / 180;
        float y = 10f * Mathf.Sin(radian);
        transform.position = startPosition + new Vector3(0, y, 0);
    }
}
