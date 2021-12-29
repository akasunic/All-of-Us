VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
~ new_quest = "Mrslee3.txt"
# new_quest

Mrslee?Neutral " "

* It's good to see you out and about!
  -> Chat1
* How are you, Mrs. Lee?
  -> QuestIntro

==Chat1==
Mrslee?Smiling "Hey. {player_name}. Today I volunteer to work with the kids."

* That is so awesome, Mrs. Lee.
  -> Chat2
* What have you been up to?
  -> QuestIntro

==Chat2==
Mrslee?Smiling "Yah. You know the kids always making noise! Ha ha. I am relax now. Because of the kids, and their funny noise."

* It's sweet how you get along with the kids!
  -> QuestIntro
* No headaches?
  -> QuestIntro

==QuestIntro==
Mrslee?Smiling "Oh. The appointment. I made appointment at doctor office. Eddie said he was relief."

* That's awesome, Mrs. Lee! But how are you feeling about it?
  -> QuestDetails1
* I'm here if you need help preparing. Mentally, emotionally, logistically..
  -> QuestAcceptance

==QuestDetails1==
Mrslee?Neutral "Me? I am concern. Nervous!"

* I think that's okay to feel nervous before an appointment.
  -> QuestDetails2
* Do you want to talk about it?
  -> OptionalQuestDetails1
* I could maybe help you prepare.
  -> QuestAcceptance

==OptionalQuestDetails1==
Mrslee?Neutral "You know? Doctor always speak so fast."

* I understand, I'm sure that's a stressful experience for you, Mrs. Lee
  -> QuestDetails2
* Maybe I can support you in some way.
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Neutral "I forget everything! My feeling.. my words."

* Mh-hm... I hear you.
  -> OptionalQuestDetails2
* Maybe we can prepare together?
  -> QuestAcceptance

==OptionalQuestDetails2==
Mrslee?Neutral "Why I'm gonna go if nobody listen to me?"

* We can work on ways to make sure the doctor listens to you.
  -> QuestAcceptance
* Let's think about this together
  -> QuestAcceptance

==QuestAcceptance==
Mrslee?Neutral "Thank you. What you think I should do? I feel nervous to go to doctor's appointment. How to prepare?"

* I'm gonna think about it!
  -> Goodbye
* I'll be back soon, sit tight!
  -> Goodbye

==Goodbye==
Mrslee?Neutral "Yes, thank you, {player_name}.

* See you soon!
  ->END
* Sure thing, Mrs. Lee.
  ->END


