using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseCursor : MonoBehaviour
{
    private static Texture2D defaultCursor;
    private static Texture2D clickableObjectCursor;
    private static Texture2D currentCursor;
    private static CursorMode cursorMode = CursorMode.ForceSoftware;
    private static Vector2 hotSpot = Vector2.zero;
    // Start is called before the first frame update
    void Start()
    {
        defaultCursor = (Texture2D)Resources.Load("Sprites/default_cursor", typeof(Texture2D));
        clickableObjectCursor = (Texture2D)Resources.Load("Sprites/clickable_cursor", typeof(Texture2D));
        currentCursor = defaultCursor;
    }

    // Update is called once per frame
    private void Update()
    {
        Cursor.SetCursor(currentCursor, hotSpot, cursorMode);
    }

    public static void turnOnClickableObjectCursor(bool turnOn)
    {
        if (turnOn)
        {
            currentCursor = clickableObjectCursor;
        }
        else
        {
            currentCursor = defaultCursor;
        }
    }


}
