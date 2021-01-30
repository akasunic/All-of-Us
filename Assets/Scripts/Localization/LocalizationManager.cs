using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization.Settings;
using Fungus;
using UnityEngine.Localization;

/// <summary>
/// Manages localization across both Unity's and Fungus's localization systems.
/// </summary>
public class LocalizationManager : MonoBehaviour
{
    [SerializeField]
    protected string startLanguage;
    public static string activeLanguage;
    public static LocalizationManager instance;

    private void Awake() {
        instance = this;
    }

    void Start() {
        if (activeLanguage == null) {
            activeLanguage = string.Copy(startLanguage);
        }
        SetLanguage(activeLanguage);
    }

    /// <summary>
    /// Sets the current language to languageCode. 
    /// </summary>
    /// <param name="languageCode">The ISO code for the target language.</param>
    public void SetLanguage(string languageCode) {  
        // Set in Fungus (copied from SetLanguage command)
        Localization localization = GameObject.FindObjectOfType<Localization>();
        if (localization != null) {
            localization.SetActiveLanguage(languageCode, true);

            // Cache the most recently set language code so we can continue to 
            // use the same language in subsequent scenes.
            activeLanguage = languageCode;
        }
        // Set in Unity
        StartCoroutine(SetUnityLanguage(languageCode));
    }

    /// <summary>
    /// Coroutine for setting the current language in unity.
    /// </summary>
    /// <param name="languageCode">The language code to compare to.</param>
    /// <returns></returns>
    private IEnumerator SetUnityLanguage(string languageCode) {
        // Wait for the localization system to initialize
        yield return LocalizationSettings.InitializationOperation;

        // Search through the available locales and compare based on language
        // code.
        foreach (Locale l in LocalizationSettings.AvailableLocales.Locales) {
            if (l.Identifier.Code.Equals(languageCode)) {
                LocalizationSettings.SelectedLocale = l;
                break;
            }
        }
    }
}
