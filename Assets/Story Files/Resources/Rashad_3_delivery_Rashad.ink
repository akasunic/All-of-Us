VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Rashad3.txt"
# new_quest

Rashad?Smiling "Well if it isn't my favorite glitter-wielding community organizer. What's up??

* Just when I think I’ve gotten rid of it all, I find a speck on my clothes. 
-> Chat1
* Nothing much, Rashad. How’s your sleep hygiene? 
-> QuestIntro

==Chat1==
Rashad?Smiling "Hah! Lila wasn’t kidding when she told you that stuff <i>travels</i>. Now you’ve been cursed by the glitter gods."

* I think I need to join a glitter support group at this point. 
-> Chat2
* You got that right! How have you been? Sleeping alright?
-> QuestIntro

==Chat2==
Rashad?Smiling "I always thought a disco ball would be a great addition to Bloomwood. Thanks for making that dream come true. Hah!"  
Rashad?Smiling "Anyway, is there something I can do for you?"

* Just checking in. How have you been? How's your sleep routine?
-> QuestIntro

==QuestIntro==
Rashad?Neutral "I have been sleeping better, actually. I met with my doctor and he recommended that I get into running again."
Rashad?Neutral "He also reiterated that seeing a Black therapist is the right move, but I'm still on the fence about it. Do you think you could help?" 

* Absolutely! People I trust say good things. What are your concerns?
-> QuestDetails1
* Yes, 110%. How about I go find some more information to ease those concerns?
-> QuestAcceptance

==QuestDetails1==
Rashad?Neutral "My doctor agrees that seeing a therapist who understands racial stress personally and professionally is important, and I have this rec from Lila, but I'm still unsure."
Rashad?Neutral "I don't know how to determine which therapist is right for me. Can you help me with more information?" 

* I can try. Did your doctor mention anything else?
-> QuestDetails2
* That sounds tough, can you tell me more?
-> OptionalQuestDetails1


==OptionalQuestDetails1==
Rashad?Neutral "Yeah, of course. It's my first time asking for help so I kind of feel like a fish out of water. Plus, the library has been super slammed, so who knows if I even have the time for this."
Rashad?Neutral "At the same time, I know I need to prioritize my mental health. It’s just hard to find someone who <i>gets it</i>, if you catch my drift. On top of that, my schedule is pretty hectic so flexibility is a must."

* I totally get it. What else do you need from me?
-> QuestDetails2
* That’s understandable. I think I can help you out with this.
-> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "Since it's my first time seeking therapy, I'm pretty nervous about it. I think opening up in this way is going to be tough for me."
Rashad?Neutral "I want to find someone who really understands, so like a list of what to ask or look for?"
Rashad?Neutral "Plus they need to take my health insurance. Having kids means it always feels like money is kind of tight so finding something in my budget is a must."

*  Alright, I think I got it. I'll get right on it.
-> QuestAcceptance


==QuestAcceptance==
Rashad?Smiling "No rush! I know this is a big ask, so no pressure. I'm nervous about therapy, but I think I need to try this for my own sanity. Some tips on how the process works and what my expectations should be would be super valuable. 
Rashad?Smiling "I want to know how to pick someone right for me." 

* I'm really happy you're trusting me with this, Rashad. I'll see what I can find out, okay?
-> Goodbye

==Goodbye==
Rashad?Smiling "Take your time! I'll see you soon, okay?"

* Bye, Rashad. Take it easy.
->END







