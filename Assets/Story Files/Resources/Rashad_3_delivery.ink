VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Rashad3.txt"
# new_quest

Rashad?Smiling "If it isn't my favorite glitter weilding community organizer. What's up?" 

* Hey now, I can't be the only person in your life cursed by glitter. Maybe Octavia and Charles are planning to cosplay as the 70's.
  -> Chat1
* Nothing much, man. How have you been? Sleeping alright?
  -> QuestIntro

==Chat1==
Rashad?Smiling "The entire decade? Tell the truth, you forgot what a disco ball was called didn't you?"

* Now you know what? I remembered, I just wanted to leave room for you to name some obscure comic book character I didn't know.
  -> Chat2
* I totally did. Anyway, I stopped by to check on you. How have you been? Sleeping alright?
  -> QuestIntro

==Chat2==
Rashad?Smiling "Mmm. Hmm. You know you imagined a disco ball.You can't cover by appealing to my nerdy heart. Anyway, is there something I can do for you?"

*  No, no. I just stopped by to check on you. How have you been? Sleeping alright?
  -> QuestIntro

==QuestIntro==
Rashad?Neutral "I have been sleeping better, actually. I saw my doctor and he suggested that I start running again."
Rashad?Neutral "He also mentioned that seeing a therapist was a good idea, but I'm not sure. Do you think you could help?" 

* I do! Why don't you tell me more?
  -> QuestDetails1
* Sure! What can I do?
  -> QuestAcceptance

==QuestDetails1==
Rashad?Neutral "My doctor says seeing a Black therapist that understands racial stress is important, and I have this rec from Lila, but I'm still unsure."
Rashad?Neutral "I don't know how to determine which therapist is right for me. Can you help me with more information?" 

* I can try. Did you doctor tell you anything else?
  -> QuestDetails2
* That sounds tough, can you tell me more?
  -> OptionalQuestDetails1
* I'll get right on it.
  -> QuestAcceptance

==OptionalQuestDetails1==
Rashad?Neutral "Yeah, of course. It's my first time asking for help. I'm so busy you know? Finding someone who has room for me is a plus."

* I know you're pretty busy. Can anything else help you?
  -> QuestDetails2
* Alright, I think I got it. I'll get right on it.
   -> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "Since it's my first time with therapy, I'm really nervous. I mean, seeing a therapist is tough for me."
Rashad?Neutral "I want to find someone who really understands, so like a list of what to ask or look for maybe?"
Rashad?Neutral "Plus they need to take my health insurance, and be able to take new client. I'd be open to teletherapy too!"

* Teletherapy? I can definitely look into that.
  -> OptionalQuestDetails2
*  Alright, I think I got it. I'll get right on it
  -> QuestAcceptance

==OptionalQuestDetails2==
Rashad?Neutral "Yeah, teletherapy might be a good fit because my schedule is so busy. My doctor suggested it."
Rashad?Neutral "If you can't find a therapist, maybe some other options would help too. I just want to be supported, you know?"

* Well, I am happy to help support. Let me ask around and see if I can find some info for you.
  -> QuestAcceptance
* Alright, I think I got everything. Thanks for trusting me, Rashad.
  -> QuestAcceptance

==QuestAcceptance==
Rashad?Smiling "Take your time! For all our clowning, I know this is an ask. I'm nervous about therapy, but committed. Some tips on finding a Black therapist and how the process works is going to do a lot."
Rashad?Smiling "I want to know how to pick someone right for me, that accepts my insurance and is more flexible. I know it's a tall order, but you're great at this." 

*  Well, I'll do my best. I'll get started on this now, okay?
  -> Goodbye
* I'm really happy you're trusting me with this, Rashad. I'll see what I can find out, okay?
  -> Goodbye

==Goodbye==
Rashad?Smiling "Take your time! I'll see you soon, okay?"

* See you soon, buddy.
  ->END
* Bye, Rashad. Take it easy.
  ->END
