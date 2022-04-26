VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Elisa3.txt"
# new_quest

Elisa?Neutral "Hey, {player_name}! What's up?"

* Oh, you know. Sky. Treetops. My mood. How about you?
-> Chat1
* Hi, Elisa! Nothing interesting here. What's up with you?
-> QuestIntro

==Chat1==
Elisa?Smiling "I was hoping I could run something past you." 

Elisa?Neutral "My little brother was just assessed for ADHD - Attenion Deficit Hyperactivity Disorder. Do you know anything about it?"

Elisa?Neutral "My folks have it in their head that this means the school thinks he's a troublemaker, and they're worried they've done something wrong."

* Oh, that's not at all what an ADHD diagnosis means! 
-> Chat2
* An assessment means he's on the track towards getting new tools for success...
-> Chat2

==Chat2==
Elisa?Neutral "I think they know that, but it's hard for them not to worry. They've made so many sacrifices, and lost so much for us to have the best chances in life."

Elisa?Neutral "hashtag first generation concerns, right? Gotta live up to everything that got us here."

Elisa?Neutral "The paperwork the school sent home was very general; there's a meeting next week, and I want to help them understand." 

Elisa?Smiling "I don't want to say this to them yet, but a lot of the things they look for in an assessment feel very familiar."

* Familiar how?
 ->Chat3
Let me go ask some questions and I'll come back with more insight!
-> QuestIntro

==Chat3==
Elisa?Smiling "I knew I could bring this up with you, and you wouldn't panic. Thank you, {player_name}."

Elisa?Smiling "Just saying it out loud makes me feel better. I sort of wonder if I don't have ADHD too; the paperwork says it runs in families." 

-> QuestIntro

==QuestIntro==
Elisa?Smiling "I guess I have two questions, really."

Elisa?Neutral "How do I support my brother as much as possible, but also, the whole thing makes me wonder if I should do an assessment."

Elisa?Neutral "With it running in families, and some of the material hitting pretty close to home. I feel like knowing more about ADHD, in general, would help me make sense of everything."


* That sounds smart, Elisa. Is there anything else I should know?
-> QuestDetails1
* I think I can find answers. Let me do some asking!
-> QuestAcceptance

==QuestDetails1==

Elisa?Neutral "Obviously, I don't want to say anything about possibly getting an assessment of my own to my folks until I have my head on straight. They're already worried about so much." 

* I got it, Elisa! I'll be discrete.
-> QuestAcceptance


==QuestAcceptance==
Elisa?Smiling "I trust you. Thank you so much."

* Anytime, Elisa! I'm on the case! 
-> Goodbye


==Goodbye==
Elisa?Smiling "I know you are. "

* I'll be back soon.
->END


==== END ====
END
   -> END















