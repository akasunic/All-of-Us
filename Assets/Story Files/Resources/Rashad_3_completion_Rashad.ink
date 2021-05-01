VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey {player_name}! Good news, I got the bookmobile to come. So we'll be able to give out library cards and give away free books. I am really excited about it. Free books! Cheers for accessibility!" 

* {not TempGoodbye} That's amazing, Rashad! I'm excited, too!
  -> Chat1
* {not TempGoodbye} That's so cool Rashad! hey, I think I have some information for you.
  -> ReadyToSolve
* {TempGoodbye} Wow! I am really excited about this. I also think you'll be excited by what I found for you.
  -> ReadyToSolve

==Chat1==
Rashad?Smiling "I am really happy you asked us. We have a lot of work to do, but I love it. I feel like this is exactly what we needed. The library, me..." 

* Rashad, seriously. This is great news. It sounds like maybe your stress levels went down.
  -> Chat2
* Speaking of you, I have some answers for you.
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "Well, just a little bit. Speaking of which, did you ever find out about those therapy questions? Don't worry if you didn't have the time."

* Hey, I wanted to make the time. Now, I do have some information for you, if you're ready.
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "Oh, I didn't know you would find out what I needed this soon. You worked really fast, {player_name}. Thank you. What did you find out?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, give me a second. I want to make sure my information is correct.
  -> TempGoodbye

==PuzzleInterface==
# turnin

* -> GoodSolution
* -> BadSolution

==GoodSolution==
 Rashad?Smiling "That good to know. This makes me a lot less nervous. Starting therapy is a big deal, and I'm glad I can trust you with this."

* Thanks for trusting me. Oh, and there's a running club you should look into. 2pm on Saturdays at the Community Center with Mr. Calindas!
  -> SolvedGoodbye

==BadSolution==
Rashad?Neutral "Hmm, okay. I still don't quite know what to expect..."

* Wait a second. Let me try that again.
  -> PuzzleInterface
* Actually, I need to check my notes. I may have some more information.
  -> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "Oh yeah! Running could definitely help with my stress. I'll talk to him."
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
