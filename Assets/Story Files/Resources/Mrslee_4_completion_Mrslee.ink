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

* Start puzzle interface.
  -> PuzzleInterface
* Wait, lemme come back!
  -> TempGoodbye

==PuzzleInterface==
# turnin

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

//info: mrs lee can write down history of her and Eddie
//info: mrs lee can discuss health history with eddie
==GoodSolution==
Mrslee?Smiling "YES! I feel energy to do this."

* Awesome, Mrs. Lee
  -> SolvedGoodbye
* I'm happy to hear this
  -> SolvedGoodbye

==BadSolution==
Mrslee?Neutral "Aghhhhhh. No"

* Try again?
  -> PuzzleInterface
* Actually, I'm not ready.
  -> TempGoodbye

==SolvedGoodbye==
Mrslee?Neutral "I understand... I will continue to think about my health. And I feel support. Thank you. I will go find Eddie now."

* OK! I am really proud of you
  -> END
* Of course, see you later Mrs Lee
  -> END

==TempGoodbye==
Mrslee?Neutral "Come back soon"

* I will!
  -> END
* Give me a bit, Mrs Lee
  -> END
