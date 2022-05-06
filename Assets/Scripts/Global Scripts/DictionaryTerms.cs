using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public static class DictionaryTerms {

    private static Dictionary<string, string> terms = new Dictionary<string, string>
    {
        {"AAA", "BBB"},
        {"CCC", "DDD"},
        {"EEE", "FFF"},
    };

    public static string getDefinition(string term) {
        return terms[term];
    }

    public static Dictionary<string, string> getDictionary() {
        return terms;
    }

}