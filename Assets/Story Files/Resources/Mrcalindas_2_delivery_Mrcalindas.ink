VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas2.txt"
# new_quest

Mrcalindas?Smiling "Ah. I'm happy you walked in, I want to ask <i>you</i> a question for a change. But first, how are you, {player_name}?" 

* Doing really well, Mr. Calindas. I'm having a great day!
  -> Chat1
* Doing really well. I'm looking forward to our next cooking lesson.
  -> QuestIntro

==Chat1==

Mrcalindas?Smiling "I'm so happy to hear it! Everyone is buzzing about how helpful it is to have you around; I'm glad it suits you, too." 

* Awww. That makes me feel cozy. Today just got even better! 
  -> Chat2
* It does suit me! I get to help people out, and I'm learning things too.
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, that's good. The neighborhood is benefitting from your help. I think everyone feels really good about where Bloomwood is heading." 

* That's so nice to hear, Mr. Calindas. What did you need to ask me?
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Oh, yes. I'm sorry - I need to <a>postpone</a> our next cooking lesson. My mother is moving in with us, and I want her to feel settled."

Mrcalindas?Neutral "It might be a while before our next lesson. I need to figure out how to make this transition as comfortable as possible for her." 

* Oh, that's okay, Mr. Calindas. I'm excited to meet your Mom!
  -> QuestDetails1
* Oh, that's okay, Mr. Calindas. How can I help out?
  -> QuestDetails2

==QuestDetails1==

Mrcalindas?Neutral "Well, she is a very opinionated, active lady. Since my father passed she's been lonely and I thought living closer to us would be for the best."

* Well, that sounds like a great plan. Did you need any help settling her in?
  -> QuestDetails2
* I would love to help if you need anything.
  -> QuestDetails2

==QuestDetails2==

Mrcalindas?Neutral "My mother is leaving behind many of her friends so it would be nice to find her good people her own age to talk to."
Mrcalindas?Neutral "Since she's been a bit <a>depressed</a>, I'm worried. I don't know the first place to look for any of that, and I don't have a lot of time to prepare." 

* Hmm. I think I can help with that. Do you want me to look for you?
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "That would save me so much time, {player_name}."
Mrcalindas?Smiling "Also, I would love to learn more about the resources there are to make it easy for her to stay fit and active! Thank you so much for helping and understanding." 

* It would be my pleasure to welcome her! I'll be back with some ideas.
  -> Goodbye
* I can't wait to meet her and welcome her to the neighborhood.
  -> Goodbye

==Goodbye==

Mrcalindas?Smiling "I'm sure she'll be happy to meet you too. I'm going to go tell Paz you're helping out. Talk to you soon!"

* Tell Mrs. Calindas I said hi! See you soon!
  ->END

