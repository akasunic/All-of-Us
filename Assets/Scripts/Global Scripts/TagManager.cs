using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class TagManager
{
    private static Dictionary<string, HashSet<string>> tagDictionary = new Dictionary<string, HashSet<string>>();
    private static Dictionary<string, HashSet<string>> infoDictionary = new Dictionary<string, HashSet<string>>();

    public static void AddTagAndInfo(string tag, string info)
    {
        HashSet<string> infos;
        if (tagDictionary.ContainsKey(tag))
        {
            infos = tagDictionary[tag];
        }
        else
        {
            infos = new HashSet<string>();
        }
        infos.Add(info);
        tagDictionary.Add(tag, infos);

        HashSet<string> tags;
        if (infoDictionary.ContainsKey(info))
        {
            tags = infoDictionary[info];
        }
        else
        {
            tags = new HashSet<string>();
        }
        tags.Add(tag);
        infoDictionary.Add(info, tags);
    }

    public static bool TagHasInfo(string tag, string info)
    {
        HashSet<string> infos = tagDictionary[tag];
        return infos.Contains(info);
    }

    public static bool InfoHasTag(string info, string tag)
    {
        HashSet<string> tags = infoDictionary[info];
        return tags.Contains(tag);
    }

    public static HashSet<string> GetInfos(string tag)
    {
        HashSet<string> infos;
        if (tagDictionary.ContainsKey(tag))
        {
            infos = tagDictionary[tag];
        }
        else
        {
            infos = new HashSet<string>();
        }
        return infos;
    }

    public static HashSet<string> GetTags(string info)
    {
        HashSet<string> tags;
        if (infoDictionary.ContainsKey(info))
        {
            tags = infoDictionary[info];
        }
        else
        {
            tags = new HashSet<string>();
        }
        return tags;
    }
}
