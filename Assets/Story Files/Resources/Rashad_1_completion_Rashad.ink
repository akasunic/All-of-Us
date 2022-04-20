VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! I was hoping I'd run into you! Any leads on people who might want to work with yours truly?"

* I've got a couple of suggestions, if you have time to hear them?
-> Chat1

==Chat1==
Rashad?Neutral "I can't remember the last time I had a lunch break. As we expand programming, my free time shrinks just as fast! For this? I'll make time!"

* I saw Elisa and Mrs. Lee, who may be able to help. Here's what I have. 
-> ReadyToSolve


==ReadyToSolve==
Rashad?Neutral "Wow, that amazing news. Elisa’s knowledge of YA lit would be invaluable and Mrs. Lee is pretty well-connected so she’s been a huge help on many different occasions. I’m listening?"

* Here you go... 
-> PuzzleInterface
* Actually, let me check my notes again.  
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
Rashad?Smiling "Whew, this is such a relief. Elisa is great, I can’t think of a better candidate for this position, and I know Mrs. Lee is bound to drum up a bunch of leads through that flyer. This is great  {player_name}, thanks so much for helping me out. I owe you one."

* Don’t mention it, Rashad! Always happy to help!
-> SolvedGoodbye
* For all that you do for the community, it’s the least I could do!
->SolvedGoodbye

==BadSolution==
Rashad?Neutral "Uhh, that’s not really what I had in mind. I’m looking for part-time help in the YA literature section to help with reshelving books, and other administrative tasks."

* Hold on. Let me take another look.. 
-> PuzzleInterface
* Ah, you’re right. Let me look over my notes again and get back to you. 
-> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "I'll reach out to Elisa and Mrs. Lee right now to see if they need any assistance from my end. Navigating the library’s website can be a bit of a hassle, but the resources available are super valuable.!"
Rashad?Smiling "Even if Elisa can only come in a couple of times a week, having her here would be a huge help. Thanks for taking the time, {player_name}. You’re a real one"
Rashad?Smiling "You really came to my rescue this week."

* I'm always happy to help, Rashad! 
-> END
* Of course! Take care, Rashad!
-> END

==TempGoodbye==
Rashad?Neutral "That sounds good to me. I gotta dash, but let’s catch up later?"

* Sure thing. I'll be back when I know more. See ya!
-> END
* Sounds good, I'll be back soon. Catch you later, Rashad! 
-> END





