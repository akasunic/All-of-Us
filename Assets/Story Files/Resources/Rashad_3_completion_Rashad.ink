VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey {player_name}! Good news, I was able to set up a bookmobile in the community center so we’ll be able to give away free books to the community. I am really excited about free books!”


* {not TempGoodbye} That's amazing, Rashad! I love this energy.
  -> Chat1
* That's so cool, Rashad! Hey, I think I have some helpful information for you.
  -> ReadyToSolve


==Chat1==
Rashad?Neutral "I am really happy about it. It’s the little things that keep me going! " 

* You’re so humble. There’s nothing <i>little</i> about that. You’re amazing!
  -> Chat2
* Speaking of, I have some information for you!
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "Hah, you’re too kind!. Speaking of which, did you ever find out about those therapy questions? Don't worry if you didn't have the time."

*  I made the time because you matter! Here's what I have..
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "Oh, I didn't know you would find out what I needed this quickly. You work really fast, {player_name}. I should’ve reached out to you sooner! Thanks for your help! What did you find?

* Here’s what I have…
  -> PuzzleInterface
* Give me a second. I want to make sure my information is correct.
  -> TempGoodbye
  
==PuzzleInterface==
# turnin

* They picked Option 1. 
  -> Option1
* They picked Option 2. 
  -> Option2
* They picked Option 3.
  -> Option3
* They picked Option 4. 
  -> Option4
* They picked a solution marked as bad.
  -> BadSolution



==GoodSolution==
Rashad?Smiling "Wow, this is really good to know. This makes me a LOT less nervous. Starting therapy is a big deal, and I'm glad I can trust you with this."

* Thanks for trusting me. Oh, and there's a running club you should look into.
  -> SolvedGoodbye
* Glad I could help, Rashad!
 -> SolvedGoodbye

==BadSolution==
Rashad?Neutral "Hmm, okay. This is kind of helpful but I still don't quite know what to expect..."

* Wait a second. Let me try that again.
  -> PuzzleInterface
* Actually, I need to check my notes. I may have some more information.
  -> TempGoodbye


==SolvedGoodbye==
Rashad?Smiling "Oh yeah! At 2pm on Saturdays at the Community Center with Mr. Calindas, right? Running could definitely help with my stress. I'll talk to him."
Rashad?Smiling "Thank you so much for helping out, again. I'm actually going to go give Lila's suggestion a ring. See you soon, {player_name}."

*  Good luck, Rashad. See you soon!
  -> END
* Looking forward to the bookmobile! Whoo! See you!
  -> END

==TempGoodbye==
Rashad?Neutral "Okay. Look, I know it's not an easy ask. I just need a bit more information. See you soon."

* Okay, I'll catch you soon.
  -> END
* I got you, I'll be back soon.
  -> END












