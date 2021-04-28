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

* Start puzzle interface.
  -> PuzzleInterface
* I'll come back to help!
  -> TempGoodbye

==PuzzleInterface==
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
Mrslee?Smiling "You're right, [player name].I feel much better about medicine now. I will tell Eddie you helped me. He will be glad I am making new friend."

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
