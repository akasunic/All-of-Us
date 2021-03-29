using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class TagManager
{
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
        }
        tags.Add(tag);
        
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
