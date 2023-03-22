VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrslee2.txt"
# new_quest

Mrslee?Smiling "Hello, {player_name}! I got Eddie's medicine. I asked the pharmacist, and it was a different name. Just ask. I should worry less. That's what Eddie says."

Mrslee?Smiling "If I ask, then I will feel less stress."

* Mrs. Lee! I'm so glad it worked out. How are you today? 
  -> Chat1
* That's great!  You took care of Eddie. Now, how are you?
  -> Chat1


==Chat1==
Mrslee?Neutral "To tell you the truth? I'm overwhelmed! Everything is harder since losing Dr. Lee, and I just can't get rid of this <a>headache</a>."

* You've been having headaches?
  -> QuestIntro
* Oh, Mrs. Lee. Again? Tell me more?
  -> Chat2
  
  
==Chat2==
Mrslee?Neutral "Eddie says I worry too much and I give myself headache from stress. So, I try not to stress. and that makes me feel more stress!"

* Well, now I'm a little concerned. Can I do anything for you? 
  -> QuestIntro

==QuestIntro==
Mrslee?Neutral "No big deal. Everybody gets headaches, right?"

* Is this something that happens regularly?
  -> QuestDetails1
* I'd like to help you! Headaches can be symptoms of other health concerns.
  -> QuestDetails2

==QuestDetails1==
Mrslee?Neutral "I talked to my sister on a <a>video chat</a>. She thinks maybe I am fine."
Mrslee?Neutral "She said sometimes her head aches when she worries too much. Or when her sleep is bad. Doctor appointments don't fix worry. They make me worry."

* Have you gotten yourself checked out at the <a>doctor</a>'s office?
  -> QuestDetails2
* I'd like to help if you'd let me.
  -> QuestAcceptance

==OptionalQuestDetails1==
Mrslee?Neutral "Thinking about doctors only make my headache worse."

* I'm so sorry. Headaches make everything harder.
  -> QuestDetails2
* I'd really like to help you out; would you let me research options?
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Neutral "I am fine. It's been like this for years and years. My mother had headaches too. She didn't go to doctors."
Mrslee?Neutral "Eddie say I should worry less. Wait until he has grandkids!"

* How often do you get headaches like this?
  -> OptionalQuestDetails2

==OptionalQuestDetails2==
Mrslee?Neutral "I am not sure. They come. They go. I am fine."

* I'm worried about you. Have you talked to Eddie about the headaches?
  -> QuestAcceptance
* Tell me what stresses you out about doctors; maybe I can find solutions.
  -> QuestAcceptance

==QuestAcceptance==
Mrslee?Smiling "I suppose Eddie would like if I ask a doctor. I feel nervous about the appointment and <a>scheduling</a>... that makes me, well, it makes my headache thinking about it."

* I can definitely help you.
  -> Goodbye
* I'll be back soon with some advice.
  -> Goodbye

==Goodbye==
Mrslee?Neutral "Thanks, {player_name}. I'm just gonna be here.

* Please don't worry, Mrs. Lee. I'll be back.
  ->END


