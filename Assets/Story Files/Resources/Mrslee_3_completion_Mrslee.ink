VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Smiling " "

* {not TempGoodbye} How are you?
  -> Chat1
* {not TempGoodbye} I thought about how to prepare!
  -> ReadyToSolve
* {TempGoodbye} I really though about it this time.
  -> ReadyToSolve

==Chat1==
Mrslee?Smiling "Hey. Can you believe it, still no headache."

* What about th--
  -> Chat2
* I can help you.
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "Oh my God! I just remember what I worry about. The appointment!"

* I can help you.
  -> ReadyToSolve
* It's okay, Mrs. Lee
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "OK. What should I do?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, I'm not ready.
  -> TempGoodbye

==PuzzleInterface==
# turnin

* They picked Option1
  -> Option1
* They picked Option2
  -> Option2
* They picked Option3
  -> Option3
* They picked Option4
  -> Option4
* They picked a solution marked bad.
  -> BadSolution

==Option1==
Mrslee?Smiling "OPTION 1 PICKED"
* I picked OPTION 1. Nice! -> SolvedGoodbye

==Option2==
Mrslee?Smiling "OPTION 2 PICKED"
* I picked OPTION 2. Nice! -> SolvedGoodbye

==Option3==
Mrslee?Smiling "OPTION 3 PICKED"
* I picked OPTION 3. Nice! -> SolvedGoodbye

==Option4==
Mrslee?Smiling "OPTION 4 PICKED"
* I picked OPTION 4. Nice! -> SolvedGoodbye


===GoodSolution==
Mrslee?Smiling "Oh. I think that makes me feel much better. Good idea!

* I'm so glad
  -> SolvedGoodbye
* Yay!
  -> SolvedGoodbye

==BadSolution==
Mrslee?Neutral "I don't think!"

* Try again?
  -> PuzzleInterface
* Let me come back, Mrs. Lee!
  -> TempGoodbye

==SolvedGoodbye==
Mrslee?Smiling "{player_name}. Thank you. This way, no stress."

* Goodbye!
  -> END
* Goodbye a different way!
  -> END

==TempGoodbye==
Mrslee?Neutral "OK. I will wait."

* No worries, Mrs. Lee 
  -> END
* I'm sorry!!
  -> END