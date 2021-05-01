VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrslee2.txt"
# new_quest

Mrslee?Neutral "What's up?"
* Hey Mrs. Lee. How did the medication go?
  -> Chat1
* Are you okay, Mrs. Lee?
  -> QuestIntro

==Chat1==
Mrslee?Smiling "It was right medication. I should be less concerning about him. That's what Eddie says."

* Eddie wants you to look out for yourself, Mrs. Lee. You know he means well.
  -> Chat2
* Hmm. Mrs. Lee, is something troubling you?
  -> QuestIntro

==Chat2==
Mrslee?Neutral "I know, {player_name}. I'm overwhelmed! Everything is harder these days alone and I just can't get rid of this headache. Again!!"

* You've been having headaches?
  -> QuestIntro

==QuestIntro==
Mrslee?Neutral "Headache, headache. I get like this all the time. No big deal. Don't worry about me."

* How often do you get headaches like this?
  -> QuestDetails1
* I'd like to help you!
  -> QuestAcceptance

==QuestDetails1==
Mrslee?Neutral "My husband said it was fine. Only stress."

* Have you gotten it checked out at the doctor's office?
  -> QuestDetails2
* I'm a little concerned about you!
  -> OptionalQuestDetails1
* I'd like to help if you'd let me.
  -> QuestAcceptance

==OptionalQuestDetails1==
Mrslee?Neutral "Thinking about the doctor's only makes my headache worse."

* I'm so sorry. I think the doctor would know best
  -> QuestDetails2
* I'd really like to help you out.
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Neutral "It's really fine. It's been like this for years and years. My mother had the same problem. I don't go to the doctors."

* How often do you get headaches like this?
  -> OptionalQuestDetails2
* Would you let me help you?
  -> QuestAcceptance

==OptionalQuestDetails2==
Mrslee?Neutral "I am not sure. They come. They go. I am fine."

* I trust you, Mrs. Lee, and I'm worried about you.
  -> QuestAcceptance
* Let's think about this together
  -> QuestAcceptance

==QuestAcceptance==
Mrslee?Smiling "I suppose Eddie would like if I went to the doctors for my headaches. I am nervous about the appointment and scheduling... that makes me feel, well, my head hurts thinking about it.

* I can definitely help you.
  -> Goodbye
* I'll be back soon with some advice.
  -> Goodbye

==Goodbye==
Mrslee?Neutral "Thanks, {player_name}. I'm just gonna be here.

* See you soon!
  ->END
* Please don't worry, Mrs. Lee. I'll be back.
  ->END


