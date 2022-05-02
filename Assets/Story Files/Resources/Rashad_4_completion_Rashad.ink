 
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""
 
-> intro
 
== intro ==
 
Rashad?Smiling "Hey, {player_name}! I'm excited to hear what you've been up to."
 
* Just doing what I can to keep the community happy!
-> Chat1
I met up with Elisa and Mrs. Lee. I have ideas for your new initiative.
-> ReadyToSolve
 
==Chat1==
Rashad?Neutral "I don't know what we'd do without you. Before you got here, I feel like a lot of your duties fell on my shoulders."
 
* I'm not surprised; you do so much for the community.
-> Chat2
* It must've been tough. Also, I have that information you asked for!
-> ReadyToSolve
 
==Chat2==
Rashad?Neutral "You have information for the initiative? Spill it!"
 
 
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
 
 
==Option1==
 
Rashad?Neutral "I definitely see the value in that - but this is a little vague. Did you learn anything more specific?"
 
Let me check my notes; I’ll be right back.
  ->PuzzleInterface
 
 
==Option2==
 # correct
 
Rashad?Smiling "I’m glad to hear that Elisa’s experience agrees with my gut instinct. I’ve been reading about the benefits of intergenerational support, and it seems like a win all around."
 
Rashad?Smiling "My grandma could tell you stories about teaching me to sew. It’s such a fun and useful skill and probably one of the greatest gifts my grandma could ever give me."

Rashad?Smilng "Thankfully she got to me before I met Cheryl. I might still be single if it wasn’t for her! Hah!"
 
* I’m happy to help further; just tell me how!
        	-> Followup41
==Followup41==
Rashad?Smiling "There are so many practical and valuable skills that seniors and teens can learn from each other. The opportunities are endless."

Rashad?Smiling "And building connections through sharing common cultural experiences can really nourish the mind and soul." 

* Couldn’t have said it better myself!
 -> SolvedGoodbye

 
==Option3==
 
Rashad?Neutral "That’s helpful, but kind surface-level. I really want the program to push beyond just fostering social connections."

Rashad?Neutral "Did you discover anything more detailed?"
 
Hold tight! I’ll be right back.
  ->PuzzleInterface
 
==Option4==
# correct

Rashad?Smiling "One of the things that got me thinking about launching this program in the first place was Mrs. Lee and her role at the Community Center." 
Rashad?Smiling "She just lights up whenever she talks about the community, which is super endearing."
 
Rashad?Smiling "If it’s good for her, it must be useful for other people too, right?"
 
 
* Absolutely. It’s a great idea!
 -> Followup42

== Followup42==

Rashad?Smiling "Mrs. Lee is really good at reading between the lines." 

Rashad?Smiling "It never even occurred to me that there could be the added benefit of making things easier for parents who work longer hours." 

* I have a great feeling about this program!
-> SolvedGoodbye
 
 
==SolvedGoodbye==
Rashad?Smiling "Thanks for your support, {player_name}. I feel like this is going to be good. For all of us."
 
My pleasure, Rashad!
  -> END
 
==TempGoodbye==
Rashad?Neutral "If I’m not at the circulation desk, I’ll be in my office."
 
* I’ll find you!
  -> END


