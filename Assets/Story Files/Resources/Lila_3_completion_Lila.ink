VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "{player_name}! What’s the story, morning glory?"

* Oh just the usual- enjoying the breeze, smelling the roses!
-> Chat1
* Hey! I asked around a little bit for you!
-> ReadyToSolve

==Chat1==
Lila?Smiling "Hey, I love to hear that you’re taking it easy."
Lila?Smiling "Speaking of roses, I recently started to garden a little bit in my freetime and it is sooo relaxing."

* That’s awesome, Lila! Hey, I have some things to share!
-> ReadyToSolve
* Woah! That’s cool- Flowers? Veggies? Homegrown salads I can taste test?
-> Chat2 

==Chat2==
Lila?Smiling "Haha! Not just yet, everything is still just budding and a little new, but I’m loving getting to cultivate a little space in the backyard."
Lila?Smiling "Charlie still isn’t on his best doggy behavior so he sometimes just jumps around in the mud so we have had to give him a bath or two, but hey that’s puppies for ya."
Lila?Smiling "It’s still worth it."

* By the way, I think I found some intel for you that may be useful.
-> ReadyToSolve

==ReadyToSolve==
Lila?Smiling "Oh my goodness! Thank you, what did you find out?"

* Here’s what I have…
-> PuzzleInterface
* Hold on.. Let me go think a bit more.
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
  
==Option1==
Lila?Neutral "I don't think just showing up to an event is going to help; my problem is putting myself out there."

* Hold on. Let me think...
  ->TempGoodbye

==Option2==
# correct

Lila?Smiling "Having a common purpose might help!"
Lila?Smiling "I guess it makes sense that if volunteering is a good way to connect, getting together for other common purpose might work."
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option3==
# correct

Lila?Smiling "So look closest to home for the connections that might give me what I need. I wonder if any of the other teachers at the Community Center needs support."
Lila?Smiling "I'm willing to give it a shot, at least to start."

* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option4==
Lila?Neutral "If I had someone to tag along for these things, I might not have a problem. I don't think that gets me there."
 
* Hold on. Let me think...
  ->TempGoodbye

==SolvedGoodbye==
Lila?Smiling "Thank you, {player_name}. I feel like making friends has just gotten harder as I've gotten older. I appreciate the advice."

* I'm happy to help!
  -> END

==TempGoodbye==
Lila?Neutral "Take your time."

* OK, Lila. Hold tight!
  -> PuzzleInterface
