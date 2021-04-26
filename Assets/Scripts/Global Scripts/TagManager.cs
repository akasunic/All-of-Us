using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class TagManager
{


    public delegate void TriggerTagsListUpdate();
    public static TriggerTagsListUpdate triggerTagsListUpdate;

    public static void setDelegate(TriggerTagsListUpdate n){
        if(triggerTagsListUpdate != null){
            triggerTagsListUpdate += n;
        } else {
            triggerTagsListUpdate = n;
        }
    }

    public static void removeDelegate(TriggerTagsListUpdate n){
        if(triggerTagsListUpdate != null){
            triggerTagsListUpdate -= n;
        } 
    }

    public delegate void TriggerCustomTagsUpdate();
    public static TriggerCustomTagsUpdate triggerCustomTagsUpdate;

    public static void setCustomDelegate(TriggerCustomTagsUpdate n){
        if(triggerCustomTagsUpdate != null){
            triggerCustomTagsUpdate += n;
        } else {
            triggerCustomTagsUpdate = n;
        }
    }
    public static void removeCustomDelegate(TriggerCustomTagsUpdate n){
        if(triggerCustomTagsUpdate != null){
            triggerCustomTagsUpdate -= n;
        } 
    }

    public static List<string> defaultTags = new List<string>{
        "Rashad",
        "Lila",
        "Mr. Calindas",
        "Elisa",
        "Mrs. Lee"
    }; 

    public static List<string> customTags = new List<string>();

    public static void AddToCustomTags(string tag){
        customTags.Add(tag);
        triggerCustomTagsUpdate();
    }
    private static Dictionary<string, List<string>> tagDictionary = new Dictionary<string, List<string>>();
    private static Dictionary<string, List<string>> infoDictionary = new Dictionary<string, List<string>>();

    public static void AddTagAndInfo(string tag, string info)
    {
        List<string> infos;
        if (tagDictionary.ContainsKey(tag))
        {
            infos = tagDictionary[tag];
        }
        else
        {
            infos = new List<string>();
            tagDictionary.Add(tag, infos);
        }
        infos.Add(info);

        List<string> tags;
        if (infoDictionary.ContainsKey(info))
        {
            tags = infoDictionary[info];
        }
        else
        {
            tags = new List<string>();
            infoDictionary.Add(info, tags);
            GlobalGameInfo.decreaseUntaggedInfoObjects();
        }
        tags.Add(tag);

        triggerTagsListUpdate();
        
    }

    public static void RemoveTagAndInfo(string tag, string info){
        List<string> infos = tagDictionary[tag];
        infos.Remove(info);

        List<string> tags = infoDictionary[info];
        tags.Remove(tag);

        triggerTagsListUpdate();
    }

    public static bool TagHasInfo(string tag, string info)
    {
        List<string> infos = tagDictionary[tag];
        return infos.Contains(info);
    }

    public static bool InfoHasTag(string info, string tag)
    {
        List<string> tags = infoDictionary[info];
        return tags.Contains(tag);
    }

    public static List<string> GetInfos(string tag)
    {
        List<string> infos;
        if (tagDictionary.ContainsKey(tag))
        {
            infos = tagDictionary[tag];
        }
        else
        {
            infos = new List<string>();
        }
        return infos;
    }

    public static List<string> GetTags(string info)
    {
        List<string> tags;
        if (infoDictionary.ContainsKey(info))
        {
            tags = infoDictionary[info];
        }
        else
        {
            tags = new List<string>();
        }
        return tags;
    }
}
