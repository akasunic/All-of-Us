VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrslee1.txt"
# new_quest

Mrslee?Neutral "Good morning, {player_name}!"

+ Mrs. Lee! How was your fitness class?  
  -> Chat1
+ Hey Mrs. Lee! How are you?
  -> Chat2

==Chat1==
Mrslee?Smiling "Good to see you. Fitness class in the morning means it's a good day already."

+ Maybe I'll join you sometime! How's your week going?
  -> Chat2

== Chat2 ==
Mrslee?Neutral "Good, but now I am feeling stressed. Very, very stressed."

+ Is there anything that I can help you with?
  -> QuestIntro
+ Oh no! Do you want to talk about it?
  -> QuestIntro


== QuestIntro ==
Mrslee?Neutral "You know my grandson. Eddie? He is coming back this weekend. I am excited! He has been away at school."

Mrslee?Neutral "He needs medication from <a>pharmacy</a>, and I always feel stress."

+ Aw, you sound upset; tell me what's bothering you?
  -> QuestDetails1
+ Of course I remember Eddie. But, can I help you feel less worried, Mrs. Lee?
  -> QuestAcceptance

== QuestDetails1 ==
Mrslee?Neutral "Last time, his <a>medicine</a> did not have <a>name</a> that Eddie told me! I was too embarrassed to ask the <a>pharmacist</a>." 
Mrslee?Neutral "Eddie said it was right, but I worry he isn't very careful. Maybe it was the wrong medicine."

+ I understand! I think we can figure this out together.
 -> QuestDetails2
+ Oh, I'm sorry, that DOES sound very stressful! How can I help?
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Neutral "It is confusing! Eddie needs his <a>blood pressure</a> medication. His blood pressure is <a>too high</a>!"

Mrslee?Neutral "I do not ask questions, because I feel like maybe the pharmacist will not understand me. That makes me feel more stress."

+ I hear you, Mrs. Lee. I would be happy to help you
  -> QuestAcceptance

== QuestAcceptance ==
Mrslee?Smiling "Thank you {player_name}. Talking helps me feel better, but could we figure out how to know if I get the right medicine?"

+ Of course we can, Mrs. Lee.  I need ask some questions and I'll be right back.
  -> END
