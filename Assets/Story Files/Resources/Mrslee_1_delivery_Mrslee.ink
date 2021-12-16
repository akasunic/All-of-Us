VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrslee1.txt"
# new_quest
~ new_contact = "Mrslee"
# new_contact

Mrslee?Neutral " "

* Mrs. Lee! Were you in the workout class that just let out?
  -> Chat1
* Hey Mrs. Lee! How are you?
  -> QuestIntro

==Chat1==
Mrslee?Smiling "Hi {player_name}. Good to see you. Yes, this is my fitness class."

+ That is awesome. How was it?
  -> Chat2

== Chat2 ==
Mrslee?Neutral "Good, but now I am feel stress. Very, very stress."

+ Is there anything that I can help you with?
  -> QuestIntro
+ I am really sorry to hear that. Do you want to talk about it?
  -> QuestIntro

== QuestIntro ==
Mrslee?Neutral "You know my grandson. Eddie? He coming back this weekend. I am excited! He's been away at school. I pick up medicine from pharmacy, and something happen, and I stress."

+ Aw, you sound upset; tell me what happened...
  -> QuestDetails1
+ Of course I remember Eddie. He's been away at school for a year now if I'm remembering correctly? But, huh, can I help you with anything about it, Mrs. Lee?
  -> QuestDetails1

== QuestDetails1 ==
Mrslee?Neutral "The medicine I pick up doesn't have name that Eddie say! I was so embarrass to ask pharmacist."

+ I understand, and the name of the medication seems pretty important
 -> QuestDetails2
+ Oh, I'm sorry, that doesn't sound like a pleasant experience. How can I help?
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Neutral "It is important. Eddie need his blood pressure medication. His blood pressure. Too high!"

+ I hear you, Mrs. Lee. I would be happy to help you
  -> QuestAcceptance

== QuestAcceptance ==
Mrslee?Smiling "Thank you {player_name}. Talking make me feel better, but could help me figure out if this is the right medication?"

+ Of course I can do that for you, Mrs. Lee. Thank you for sharing your experience with me!
  -> END
