VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Elisa1.txt"
# new_quest

Elisa?Neutral "Buenos dias, {player_name}. How's it going?"

* I'm doing okay, but I came over to check on you. You look... stressed.
-> Chat1
* Hi, Elisa! That's quite some pile of notes... whatcha studying?
-> QuestIntro

==Chat1==
Elisa?Neutral "Oh, it's probably nothing. I mean, not nothing, but it will be okay." 

Elisa?Neutral "Gosh, that sounds worse than it is. My mom got results from her <a>bloodwork</a> yesterday and I'm a little worried about her."

* Do you want to talk about it?  
-> Chat2
* That's rough. Is there any way I can help? 
-> Chat2

==Chat2==
Elisa?Neutral "I don't know. I'm starting by doing my research, and figuring out how much to worry. I think it's worse right now because I'm getting ready to move away for part of the year."

* Worrying is natural. Do you think I might be able to help?
-> QuestIntro

==QuestIntro==
Elisa?Smiling "Well, since you asked, how much do you know about <a>diabetes</a>? I want to know as much as I can, so I can support my mom with her <a>diagnosis</a>."

Elisa?Neutral "I've been reading medical websites - like the <a>CDC</a> and the <a>Mayo Clinic</a> and watching YouTube shows about diabetic cooking."

Elisa?Neutral "Just... everything I could find about being diagnosed and the lifestyle changes that come with."

* Hmmm, I may be able to help. Can you tell me more?
-> QuestDetails1
* Would it help if I asked around for more information?  
-> QuestAcceptance

==QuestDetails1==
Elisa?Neutral "What I know is that her bloodwork came back, and her doctor wants her to go to an <a>endocrinologist</a>. <a>Type 2 diabetes</a>."

Elisa?Neutral "Her <a>A1C</a> is high. Apparently that's a long-term measure of your <a>blood sugar</a>." 

* Huh. Is that new for her?
-> QuestDetails2
* I'm going to go ask questions and come back to you! 
-> QuestAcceptance

==QuestDetails2==
Elisa?Neutral "I guess her test results have been "borderline" for some time, but not enough to cause anyone to worry. Now she's in the range that could cause other health concerns."

Elisa?Neutral "I didn't know it was something to worry about until now." 


* Got it! I think I can find someone with more knowledge.  
-> QuestAcceptance


==QuestAcceptance==
Elisa?Smiling "That would be a real relief. I just know this is going to be stressful for my folks once the whole thing sinks in."

Elisa?Smiling "If it's not too much trouble, and you have the time, it would be very helpful to hear what other people know. Or have experienced."

* Of course, Elisa! You can always count on me.
-> Goodbye


==Goodbye==
Elisa?Smiling "I would love to have resources to share when they're ready, {player_name}!"

* Sounds good. Bye Elisa! ->END
* For sure. See you soon! ->END

==== END ====
END
   -> END















