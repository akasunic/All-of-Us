VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey, {player_name}!"

* {not TempGoodbye} Hey! Whatcha up to? -> Chat1
* {not TempGoodbye} Hi! I found out some info on the diabetes stuff you were talking about.
  -> ReadyToSolve
* {TempGoodbye} Hi! So, I asked around about health info for your mom, is now a good time?
  -> ReadyToSolve

==Chat1==

Elisa?Neutral "Oh, just getting some homework done for class tomorrow."

* Ooh what class? Anything exciting?
  -> Chat2
* Gotcha. By the way, I found some info for your mom if you've got a minute.
  -> ReadyToSolve

==Chat2==

Elisa?Neutral "Right now I'm working on a report for my Financial Analysis class! It's my favorite class so far."

* Awesome! Hey, I found out more info for you on diabetes if you wanna talk about it.
  -> ReadyToSolve
* Well, I'm glad it's exciting to someone! Haha, anyway, I think I found some good info for you on diabetes.
  -> ReadyToSolve

==ReadyToSolve==

Elisa?Neutral "Oh, that's great! What'd you find out?"

* Start puzzle interface.
  -> PuzzleInterface
* Wait... let me ask around a little more.
  -> TempGoodbye

==PuzzleInterface==
# turnin

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

==GoodSolution==

Elisa?Smiling "Thanks so much, {player_name}! I'll go talk to my mom, she should be home by now. Seriously, thanks for all your help."

* You're welcome!
  -> SolvedGoodbye
* Any time, Elisa.
  -> SolvedGoodbye

==BadSolution==

Elisa?Neutral "Hmm, did you find any other information? I'm not sure if that's enough to convince my mom to go to the doctor."

* Try again?
  -> PuzzleInterface
* Wait... let me ask around a little more.
  -> TempGoodbye

==SolvedGoodbye==

Elisa?Smiling "And hey- I thought about it more, and I think I should be able to come help out with the block party! Anyway, I should get going. Bye {player_name}!"

* That's amazing! Bye Elisa!
  -> END
* Thanks so much! See you around, Elisa.
  -> END

==TempGoodbye==

Elisa?Neutral "Oh ok, no worries! See you soon then."

* See ya!
  -> END
* Bye, be right back!
  -> END