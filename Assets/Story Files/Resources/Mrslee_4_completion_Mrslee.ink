VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Smiling "Hey. {player_name}."

* {not TempGoodbye} Have you heard from Eddie again?
  -> Chat1
* {not TempGoodbye} I have advice for you
  -> ReadyToSolve
* {TempGoodbye} I think I got it this time
  -> ReadyToSolve

==Chat1==
Mrslee?Neutral "No, he is focus on driving."

* That's good
  -> Chat2
* I thought about your question earlier
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "I have been missing him."

* I know, Mrs. Lee!
  -> ReadyToSolve
* He's almost here.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Smiling "What do I do about my health and good future health?" 

* Here’s what I have…
  -> PuzzleInterface
* Wait, lemme come back!
  -> TempGoodbye

==PuzzleInterface==
# turnin

* They picked Solution 1. 
  -> Solution1
* They picked Solution 2. 
  -> Solution2
* They picked Solution 3.
  -> Solution3
* They picked Solution 4. 
  -> Solution4
  
==Solution1==
MrsLee?Smiling “Eddie and I already using video calls to talk more. And he asking more questions about Dr. Lee. I want him to know everything I know.”
MrsLee?Smiling “Also, it makes things easy if he has to answer questions if I get sick.” 

* This is a great way to share your family medical history, Mrs. Lee. 
-> Followup41

==Followup41==
MrsLee?Smiling “Dr. Lee did not tell Eddie about high blood pressure. I need to make sure he knows everything he can!” 

->END

==Solution2==
MrsLee?Neutral “Great Idea. But, Dr. Lee had big folder, but it was so confusing. I never understand all of it. I feel more stress with big pile of papers to look at.”
MrsLee?Neutral “I want to share all my information with Eddie, and the folder so confusing.” 

-> TempGoodbye

==Solution3==
MrsLee?Smiling “I never want to feel so stress about appointments. So scared, and for what? I talk to Eddie and make sure he know as much as I know.” 

* That’s great, Mrs. Lee. Helping you helps him!
-> Followup42

==Followup42==
MrsLee?Neutral “Dr. Lee did not share his information, and did not tell me about high blood pressure or heart disease. I feel sad and angry. I did not know.” 
MrsLee?Smiling “I want to know my health business!” 

->END

==Solution4==
MrsLee?Neutral “So many doctors, so many schedule. My new volunteering job with the kids is still changing. I can’t plan so far ahead.” 
MrsLee?Smiling “They give me card to fill out; they will mail it to remind me to schedule appointments later. Maybe after I learn my new job, I can plan ahead even more.” 

-> TempGoodbye

==SolvedGoodbye==
Mrslee?Neutral "I understand... I will continue to think about my health. And I feel support. Thank you. I will go find Eddie now."

* OK! I hope you're proud of yourself! 
  -> END

==TempGoodbye==
Mrslee?Neutral "I feel excite to hear your suggestion!"

* Give me a bit, Mrs Lee
  -> END
