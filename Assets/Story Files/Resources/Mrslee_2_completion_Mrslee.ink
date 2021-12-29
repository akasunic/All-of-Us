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

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

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
