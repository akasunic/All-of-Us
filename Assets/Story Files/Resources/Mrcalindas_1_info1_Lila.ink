VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Lila"
# new_contact

Lila?Smiling "Hey {player_name}! How are you feeling today?"

* Hey Lila! Are you on break?
  -> Chat1
* I'm feeling pretty good, actually. Are you on a break?
  -> Chat1

==Chat1==

Lila?Smiling "It's naptime for the kids, so I'm trying to soak up some rays. Fresh air is really great for clearing the brain, you know? I try and get outside pretty frequently." 
 
* I'm glad you got them to nap so you could relax.
  -> Chat2
* I know you're on a break, but could I ask you for your opinion on something?
  -> Explain1

==Chat2==

Lila?Smiling "Well, breaks are important, too. Teaching young children is awesome, but they can give you a run for your money. We all need to take a break now and then to be our best selves." 

* I heart <i>that</i>. I know you're taking a break, but could I ask you a question?
  -> Explain1
* Well, I don't want to interrupt you becoming your best self, but could I ask your opinion on something?
  -> Explain1


==Explain1==
Lila?Smiling "Oh, no problem, {player_name}. What can I help you with?" 

* Mr Calindas is running the health booth, and he wants your opinion on something.
  -> Explain2
* We're having a health booth at the block party, and I could use your opinion on something.
  -> Explain2

==Explain2==

Lila?Neutral "Oh that sounds great! I wish more community providers asked what the community needed. What kind of opinions are you looking for?" 

* What does the community need to know about health?
  -> Suggestion1
* What community health issues or programs would you want to know more about?
  -> Suggestion2

==Suggestion1==
 Lila?Smiling "Well, offering parenting classes and what to look for in your children's health could really help our community."
Lila?Smiling "Oh, and it can be hard to get to the health center for people who live on the outskirts of Bloomwood. So maybe public transportation vouchers for health events." 

~ notification = "Lila_Day 1_Transportation Vouchers can be available"
# notification Lila_Day 1_Transportation Vouchers can be available
~ notification = "Lila_Day 1_Parenting classes can help parents with their children's health"
# notification Lila_Day 1_Parenting classes can help parents with their children's health

* That sounds really thoughtful. Can you think of anything else that the community would need to know?
  -> Suggestion2
* That sounds pretty great! I'll bring this up with Mr. Calindas.
  -> Goodbye

==Suggestion2==
Lila?Smiling "Well, it's important for communities of color and LGBTQIA folks get the help they need with no judgements."
Lila?Smiling "We can face a lot of stigma, and that harms access to care. Oh, and mental health resources are useful for everyone. We all get stressed or have hard times." 

~ notification = "Lila_Day 1_LGBTQIA and POC populations can face stigma in healthcare_Mrcalindas1"
# notification Lila_Day 1_LGBTQIA and POC populations can face stigma in healthcare_Mrcalindas1
~ notification = "Lila_Day 1_Mental Health help is useful for everyone _Mrcalindas1"
# notification Lila_Day 1_Mental Health help is useful for everyone _Mrcalindas1

* That sounds really thoughtful. Can you think of anything else that the community would need to know?
  -> Suggestion1
* That sounds pretty great! I'll bring this up with Mr. Calindas.
  -> Goodbye

==Goodbye==
Lila?Smiling "I'm so happy I could help like this. Let me know if you need any other ideas, okay? I'm going to go grab some tea. I'll see you around okay? Don't forget to take a break!" 

* I won't! Thanks for your help, Lila. Enjoy the tea!
 -> END
* I'm going to take a quick break right now. Thanks, Lila! See you soon!
 -> END
