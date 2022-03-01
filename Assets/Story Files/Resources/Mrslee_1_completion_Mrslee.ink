VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Neutral "I am so frustrate--I feel so frustrate!"

* {not TempGoodbye} Talk to me, Mrs. Lee
  -> Chat1
* {not TempGoodbye} I think I might be able to help you
  -> ReadyToSolve
* {TempGoodbye} Ok, I'm ready this time!
  -> ReadyToSolve

==Chat1==
Mrslee?Neutral "I'm so concerning about Eddie. He has high blood pressure and I worry bad things gonna happen if he don't take."

* When does he need the medication?
  -> Chat2
* I can help you.
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "He needs medicine when he arrive before the weekend maybe? I need to make sure it's correct."

* I think I know what to do!
  -> ReadyToSolve
* We'll make sure he gets it in time.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "What do you think?"

* Here’s what I have…
  -> PuzzleInterface
* I'll come back to help!
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


==PuzzleInterfaceOld==
# turnin

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

//info: Lila can go to the pharmacy with Mrs. Lee 
//info: Use the drug information portal can describe generic drug names
==GoodSolution==
Mrslee?Smiling "Actually, I think that is a great idea. I should have thought of that myself..."

* It's okay to ask for help, Mrs. Lee
  -> SolvedGoodbye
* I'm here to support you!
  -> SolvedGoodbye

//do all of the other possible info types fall here?

==BadSolution==
Mrslee?Neutral "I don't think that's really going to help me."

* Okay, okay, let me think...
  -> PuzzleInterface
* I'll come back soon
  -> TempGoodbye

==SolvedGoodbye==
Mrslee?Smiling "You're right, {player_name}.I feel much better about medicine now. I will tell Eddie you helped me. He will be glad I am making new friend."

* Of course, Mrs. Lee. See you around!
  -> END
* I'm so happy to hear it!
  -> END

==TempGoodbye==
Mrslee?Neutral "Okay, come back soon!"

* No worries, Mrs. Lee. I will.
  -> END
* I'll be back before Eddie arrives!
  -> END
