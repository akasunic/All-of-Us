VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Elisa4.txt"
# new_quest

Elisa?Smiling "Oh, hey {player_name}!"

* Hey Elisa! Oh, how's the mentor search going?
  -> Chat1
* Sooo, you got any plans coming up? Maybe something related to succulents?
  -> QuestIntro

==Chat1==

Elisa?Smiling "It's going great! I talked to my friend who was on the Nature Club board last year- we're gonna sit down and have coffee later today!"

* That's great to hear!
  -> Chat2
* Nice! So, have you given any more thought to the block party coming up?
  -> QuestIntro

==Chat2==

 Elisa?Smiling "Yeah, I'm really excited. Thanks again for helping me out with that."

* No problem! Also, I've been meaning to ask- what did you decide about the block party?
  -> QuestIntro

==QuestIntro==

Elisa?Neutral "I'm not sure if I can make it. I might need to stay back and look after my mom... honestly, I'm kinda worried about her."
Elisa?Neutral "She's been eating a lot more than usual, and drinking a lot more fluids too. I'm worried that she might have diabetes, but I'm not sure."

* Huh... what makes you think it's diabetes?
  -> QuestDetails1
* You know what? Let me do some digging, maybe I can find out some more info on diabetes for you and your mom.
  -> QuestAcceptance

==QuestDetails1==

Elisa?Neutral "Well, my uncle on my mom's side has diabetes, and I think it might be genetic."
Elisa?Neutral "But I don't know, I could be wrong. That's just the first thing my mind went to."

* Would you want to take your mom to the doctor?
  -> QuestDetails2
* What type of diabetes does your uncle have?
  -> OptionalQuestDetails1
* You know what? I'll ask around for you, and see if I can't find anything out about diabetes.
  -> QuestAcceptance

==OptionalQuestDetails1==

Elisa?Neutral "I think it's type 2. I haven't seen him in a while, though... I should really call him up and see how he's doing."

* Well, if it is diabetes, would your mom be willing to go to a doctor?
  -> QuestDetails2
* Accept the quest.
  -> QuestAcceptance

==QuestDetails2==

Elisa?Neutral "I think I'd want to take her to the doctor, but I don't know if she'd want to go. Right now she's pretty dismissive that there's even anything wrong."
Elisa?Neutral "I feel like if I knew what tests the doctor would run then I could convince her to go, but I'm not sure what that all would be like."

* How long did you say her symptoms have been going on?
  -> OptionalQuestDetails2
* That sounds like something I could find out! Why don't I ask around for ya?
  -> QuestAcceptance

==OptionalQuestDetails2==

Elisa?Neutral "Honestly, I'm not sure. My mom was working late nights at the office last month, so I don't really know when it started."
Elisa?Neutral "I first noticed the eating and drinking thing about a week ago."

* Got it! Let me see what I can find out for you.
  -> QuestAcceptance
* Don't even worry about it- I'm on the case.
  -> QuestAcceptance

==QuestAcceptance==

Elisa?Smiling "That'd be great, {player_name}! Yeah, if you could find out what the testing process is like for diabetes and what treatments there are, that'd really help me out a lot."
Elisa?Smiling "I want to make sure she has the care she needs as soon as possible if this is what's happening."

* Can do!
  -> Goodbye
* I'll get right on it!
  -> Goodbye

==Goodbye==

Elisa?Smiling "Awesome, see you later {player_name}!"

* Bye Elisa!
  ->END
* See ya!
  ->END


