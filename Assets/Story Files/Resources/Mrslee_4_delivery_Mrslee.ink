VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
~ new_quest = "Mrslee4.txt"
# new_quest
Mrslee?Smiling "You wanna see Eddie?"

* Hey, Mrs. Lee!
  -> Chat1
* Eddie is back?
  -> QuestIntro

==Chat1==
Mrslee?Smiling "I was reading the newspaper. I was thinking a lot! I hear my phone ringing. It was Eddie! Says he's coming soon!"

* That's super exciting, Mrs. Lee!
   -> Chat2
* What were you thinking about?
  -> QuestIntro


==Chat2==
Mrslee?Smiling "OH. You know. I went to doctor's office. Doctor was a "SHE," and she was very, very smart. I feel like I understand lotta things now."

* Yay!! Do you want to talk about it?-> QuestIntro


==QuestIntro==
Mrslee?Smiling "You know. Eddie's very important to me and I talk about him a lot."

* I know that, Mrs. Lee, it's sweet.
  -> QuestDetails1
* You need to think about yourself, too!
  -> QuestAcceptance


==QuestDetails1==
Mrslee?Smiling "I ask lotta question about his blood pressure. You know, it's very funny!"

* What about the headaches?
  -> QuestDetails2
* What is so funny?
  -> OptionalQuestDetails1
* It was your appointment!
  -> QuestAcceptance

==OptionalQuestDetails1==
Mrslee?Smiling "Doctor said "Mrs. Lee. Your blood pressure is ... a VERY good number." She asked how I feel. Lots of questions about me."

* Yes, the appointment was for you!
  -> QuestDetails2
* I'd really like to help you out.
  -> QuestAcceptance


==QuestDetails2==
Mrslee?Smiling "We talk about my headache. You know! My eye exam was so bad!"

* What does that mean?
  -> OptionalQuestDetails2
* You're collecting information about you!
  -> QuestAcceptance


==OptionalQuestDetails2==
Mrslee?Smiling "That's why I am getting aching like this. My eyes work so hard. So my head is aching."

* It's great to have some answers!
  -> QuestAcceptance
* You should feel very accomplished, Mrs. Lee!
  -> QuestAcceptance


==QuestAcceptance==
Mrslee?Smiling "I am thinking about this. My health is very important, too! How should I continue my good health practice?"

* I'm going to think about it.
  -> Goodbye
* I'll be back soon with some ideas.
  -> Goodbye

//mrs lee is happy
==Goodbye==
Mrslee?Smiling "OK. I will sit here and think."

* Okay, Mrs. Lee
  ->END


