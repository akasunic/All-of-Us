VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila3.txt"
# new_quest

Lila?Smiling "Hey {player_name}!"

* Hi Lila!
    -> Chat1
* What's up Lila?
    -> Chat1

==Chat1==
Lila?Smiling "I wanted to say thank you for helping me out with that health information the other day."
Lila?Smiling "I read some of that website Mr. Calindas linked, and I was able to call the doctors office and set up some appointments."

* That's great! How have you been feeling about it? 
    -> Chat2
* Wonderful. Glad I could help! 
    -> QuestIntro

==Chat2==
Lila?Smiling "Definitely more confident with my own knowledge. I'm ready to dive in."

* I'm glad I could help.
    -> QuestIntro

==QuestIntro==
Lila?Neutral "Along similar lines, when I was on that website researching metabolic syndrome, I stumbled on this other syndrome called polycystic ovarian syndrome."

* I haven't heard of it, but what about it? 
    Lila?Neutral "So I think I might have it, but "
    -> QuestDetails1
* Is that a women's health issue? 
    Lila?Neutral "Yes. "
    -> QuestDetails2

==QuestDetails1==
Lila?Neutral "I'm a little uncomfortable talking to my doctor about it since he's a man, and it's a women's health issue. I would feel more comfortable talking to someone who could relate to my symptoms."

* Tell me more. 
    -> QuestDetails2
* I feel the same, I definitely prefer to see a doctor who can relate to me.
    -> OptionalQuestDetails1
* Accept the quest. 
    -> QuestAcceptance

==OptionalQuestDetails1==
Lila?Neutral "It's under the umbrella of already stigmatized issues, and I'm hoping a woman might be more open to my experiences."
Lila?Neutral "I've had times in the past where my pain was written off as being not a big deal, and I don't want that to happen again."

* That shouldn't be happening. 
    -> QuestDetails2
* I feel similarly. 
    -> QuestDetails2

==QuestDetails2==
Lila?Neutral "Women's health has always been a difficult topic for me to open up about."
Lila?Neutral "My mom never talked about anything growing up aside from what was absolutely necessary for me to know, and it's led to a lot of awkwardness on my part."

* That's understandable.
    -> OptionalQuestDetails2
* If it would help, I could look for some resources again.
    -> QuestAcceptance

==OptionalQuestDetails2==
Lila?Neutral "I wish she had introduced me to more sooner. I learned a lot myself from TV shows and in college that I wish I had known going into adulthood."
Lila?Neutral "I don't even know where to start figuring this out, do you have any ideas?"

* I have some, but let me confirm them and get back to you.
    -> QuestAcceptance
* I don't right now, but I can look into it for you. 
    -> QuestAcceptance

==QuestAcceptance==
Lila?Smiling "That would be great. You've been so supportive recently I felt like I could come to you about this."
Lila?Smiling "I'll work on feeling more comfortable in this area so I can start exploring it for myself soon." 

* I'm glad I can be here for you. I'll get started on this now, I have some time. 
    -> Goodbye
* Of course! If you need anything, you can always ask.
    -> Goodbye

==Goodbye==
Lila?Smiling "Thanks, {player_name}. Text me if you have any questions!"

* Bye, Lila!
    ->END
* See you later!
    ->END
