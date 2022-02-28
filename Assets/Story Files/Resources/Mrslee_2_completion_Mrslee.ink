VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Mrslee?Smiling "{player_name}. Hi. Listen. I was looking for you. My headache went away! I am OK. No problem!"

* {not TempGoodbye} That's great news, Mrs. Lee.
  -> Chat1
* {not TempGoodbye} I can help you.
  -> ReadyToSolve
* {TempGoodbye} I got it this time!
  -> ReadyToSolve

==Chat1==
Mrslee?Smiling "Yes, so you don't think I need the doctor anymore, you think?"

* I think it's important to get your routine check up, Mrs Lee.
  -> Chat2
* I think we should still talk about your headaches. Is that okay?
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "I'm feeling good now because no headache, but when I think about doctors... I feel like headache."

* We can talk about it together; I'll help.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "What should I do?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, I'm not ready.
  -> TempGoodbye

//mrs lee is neutral
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
Mrslee?Smiling "OK. You're right! I will do before I get another headache."

* That's a great idea
  -> SolvedGoodbye
* I'm here to support you, Mrs. Lee.
  -> SolvedGoodbye

==BadSolution==
Mrslee?Neutral "Headache, headache"

* Try again?
  -> PuzzleInterface
* Actually, I'm not ready.
  -> TempGoodbye

==SolvedGoodbye==
Mrslee?Smiling "{player_name}. Thank you for encouraging. I will do. 

* You got this!
  -> END
* I know you can do this, Mrs Lee!
  -> END

==TempGoodbye==
Mrslee?Neutral "{player_name}, OK!"

* Ok, see you later!
  -> END
* I'll come back.
  -> END
