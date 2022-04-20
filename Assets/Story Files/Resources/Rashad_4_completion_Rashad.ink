
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! How you been? Excited to hear what you've been up to."

* {not TempGoodbye} Just doing what I can to keep the community happy!
-> Chat1
* {TempGoodbye} I met up with Elisa and Mrs. Lee. I have some ideas for your new initiative.
-> ReadyToSolve

==Chat1==
Rashad?Neutral "I don't know what we'd do without you. Before you got here, I feel like a lot of your duties fell on my shoulders."

* I'm not surprised, you do so much for the community.
-> Chat2
* It must've been tough. Also, I do have that information you asked for!
-> ReadyToSolve

==Chat2==
Rashad?Neutral "You have information for the initiative? Spill the tea.”


* Elisa and Mrs. Lee shared a lot of helpful tips. Here's what I learned.
-> ReadyToSolve
* I learned a lot from Mrs. Lee and Elisa. They are gold mines of information!
-> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "I'm not surprised. Elisa is really smart and thoughtful, and Mrs. Lee has a close relationship with both Eddie and Lila. She's helped me out many times. I’m listening?"

* Here it is... 
-> PuzzleInterface
* Hold on. I want to make sure what they said is captured correctly.
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
Rashad?Smiling "Wow. This is dope. I knew both teens and seniors could benefit from this, but I didn't know how much. Thank you so much for looking into this, {player_name}."

* Always happy to help, Rashad. Let me know if you need anything else!
-> SolvedGoodbye
* I knew talking to Mrs. Lee and Elisa was the right move.
-> SolvedGoodbye

==BadSolution==
Rashad?Neutral "Um, that's not exactly what I was looking for. Was there anything else that they shared? I want to know how it benefits seniors and teens."

* Hmm. Give me a sec, let me try that again.
-> PuzzleInterface
* Yeah, good point. Let me take a look at my notes again and circle back.
-> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "I'm gonna shoot some emails over to Elisa and Mrs. Lee right now to see if they’d be interested in talking through some ideas. And to see if any of their friends would be willing to sign up!"
Rashad?Smiling "Even if they can’t participate, at least I can reach out to get their insight. Thanks for helping me figure out this stuff, {player_name}."
Rashad?Smiling "You’ve been such a huge help this week. See you!"

*  See you later, Rashad!
-> END
* I'll see you soon. Happy to help.
-> END

==TempGoodbye==
Rashad?Neutral "Sounds like a plan. I'll go run a quick errand, catch you later?"

* Ok, I'll be back when I know more. See you soon! 
-> END
* Okay, I'll be back. See you! 
-> END




