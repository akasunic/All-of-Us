using System.Collections;
using System.Collections.Generic;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

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
        #if UNITY_EDITOR
            defaultCursor = (Texture2D)AssetDatabase.LoadAssetAtPath("Assets/ArtAssets/Resources/default_cursor.png", typeof(Texture2D));

            // string file = (Texture2D)Application.streamingAssetsPath + "/clickable_cursor.png";
            // var rawData = System.IO.File.ReadAllBytes(file);
            // clickableObjectCursor.LoadImage(rawData);

            clickableObjectCursor = (Texture2D)AssetDatabase.LoadAssetAtPath("Assets/ArtAssets/Resources/clickable_cursor.png", typeof(Texture2D));
            currentCursor = defaultCursor;
        #endif
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
