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
