VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Elisa2.txt"
# new_quest

Elisa?Smiling "Hey, friend! How are you doing?"

* Today is a great day. How are you?
-> Chat1
* Hi, Elisa! Tell me about you! 
-> Chat2

==Chat1==
Elisa?Smiling "You know ... I'm discovering that the paperwork and administration that goes along with my <a>transfer</a> to the state school to finish my degree is almost more stress than finals." 

Elisa?Neutral "But I have a list and I'm working my way through it. One ridiculous document at a time."

* What's on the list?  
-> Chat2
* You're so methodical! Is there any way I can pitch in? 
-> Chat2

==Chat2==
Elisa?Neutral "Where do I start? I'll skip the really boring things, like the housing survey..."

Elisa?Neutral "Did you know you have to answer a million questions about study habits and noise preferences that they then use to match you with a roommate?"

Elisa?Smiling "I am hoping to be approved for <a>off-campus housing</a>, but I'm filling out the roommate paperwork just in case." 

Elisa?Smiling "A lot of this is just <a>grinding</a> through, but there is one thing I don't understand, and I could use some help!"

* I'm in. Just tell me what you need! 
-> QuestIntro

==QuestIntro==
Elisa?Smiling "One of the things I need is my <a>vaccination</a> records. We can't find them anywhere."

Elisa?Neutral "I don't know how to go about replacing them if they don't turn up."

* Is that the last time you think you had them?
-> QuestDetails1
* I can do some research and figure out where to start, if you'd like.
-> QuestAcceptance

==QuestDetails1==
Elisa?Neutral "I keep thinking we had them electronically, but I can't guess where they went. Trying to figure this out feels so overwhelming on top of everything else."

* This must be something other families have had to solve. I'll be back!
-> QuestAcceptance


==QuestAcceptance==
Elisa?Smiling "{player_name}, I'd be so grateful. You're right - this must be a problem with a solution."

* Of course, Elisa! You can always count on me.
-> Goodbye


==Goodbye==
Elisa?Smiling "I appreciate this so much. You don't even know!"

* Haha! It's my pleasure to help. Bye Elisa! ->END


==== END ====
END
   -> END















