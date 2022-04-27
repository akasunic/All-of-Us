VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Rashad1.txt"
# new_quest

Rashad?Smiling "Hey {player_name}! How's it going?"

* Not too bad, Rashad! How are you?  
-> Chat1
* Hi Rashad! Doing well, how can I help you today?
-> QuestIntro

==Chat1==
Rashad?Neutral "I've been trying to kickstart some new programs, but the paperwork never ends. It kinda feels like I'm stuck in quicksand."
Rashad?Neutral "I don't mean to complain, but this week, it all feels pretty overwhelming."

* Yikes. That sounds tough. 
-> Chat2
* That's rough. Is there any way I can help? 
-> Chat2

==Chat2==
Rashad?Neutral "I know, right? Between us, the board isn't always emphathetic when it comes to what the community actually needs. There's a big disconnect, there."
Rashad?Neutral "On top of that, the library has been pretty hectic these days."

* That's a lot to manage. Is there any way I can help? 
-> QuestIntro

==QuestIntro==
Rashad?Smiling "Well, now that you mention it. The library has been super slammed lately, and I'm looking to fill that open position in the Young Adult Literature section..."

* Hmmm, I may be able to help. Can you tell me more?
-> QuestDetails1
* I think I may be able to help you with that.  
-> QuestAcceptance

==QuestDetails1==
Rashad?Neutral "Sure! It's perfect for someone who knows 'young adult literature" and children's books. Ideally, someone with great people skills who doesn't mind multi-tasking."
Rashad?Neutral "Ugh. Just saying that out loud, it sounds like a tall order!"

* It doesn't sound that bad! Can you tell me more about the position? 
-> QuestDetails2
* I can ask around. How soon do you need to fill the position? 
-> OptionalQuestDetails1

==OptionalQuestDetails1==
Rashad?Neutral "It's probably a shot in the dark but if I can set up interviews by next week, that would be amazing."
Rashad?Neutral "If I wasn't swimming in admin work, I'd probably have a chance to properly look for a good candidate."

* I may have someone for you. Is there anything else I should know? 
-> QuestDetails2
* I think I can make that happen!
-> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "This role would be part-time, maybe two or three shifts a week. I can be flexible about which shifts, honestly."
Rashad?Neutral "They will need to learn the young adult section, so they can help reshelve books and run the help desk."
Rashad?Neutral "I'd love someone who could take over storytime on Saturdays. We have a session in the morning and one in the afternoon to support as many families as possible." 

* Sounds good.  Is there anything else I should keep in mind? 
-> OptionalQuestDetails2
* I think I can find someone.  
-> QuestAcceptance

==OptionalQuestDetails2==
Rashad?Neutral "I mean, it'd be perfect for a student. They can study when they staff the help desk. Oh, they'll need a solid resume, too."

* That's reasonable. You can count on me, Rashad!
-> QuestAcceptance
* I got you covered!
-> QuestAcceptance

==QuestAcceptance==
Rashad?Smiling "Thanks for having my back! If you find someone, just have them reply to the posting on the library's website."
Rashad?Smiling "I really appreciate your help, {player_name}!"

* Of course, Rashad! You can always count on me.
-> Goodbye

==Goodbye==
Rashad?Smiling "If we can get even a single application, it would mean the world." 
Rashad?Smilng "Cheryl and I are hoping to take the kids on a roadtrip during the next school break. Having someone trained would make that less stressful." 
Rashad?Smiling "I've have to head out but I'll catch you later?"

* Sounds good. Bye Rashad!
   ->END
















