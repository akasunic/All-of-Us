VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Lila"
# new_contact

Lila?Smiling "Hey {player_name}! How are you feeling today?"

* Hey Lila! Got a moment?
  -> Chat1
* I'm feeling pretty good, actually. Are you on a break?
  -> Chat1

==Chat1==

Lila?Smiling "It's naptime for the kids, so I'm trying to soak up some rays. Fresh air is really great for clearing the brain, you know? I try and get outside pretty frequently." 
 
* I'm glad naptime is built in so you get a minute to relax.
  -> Chat2
* I know you're on a break, but could I ask you for your opinion on something?
  -> Explain1

==Chat2==

Lila?Smiling "Breaks are important. Teaching young children is awesome, but they give me a run for my money. I definitely need to take a break now and then to be my best self." 

* I heart <i>that</i>. I know you're taking a break, but could I ask you a question?
  -> Explain1
* Well, I don't want to interrupt you channeling your best self, but could I ask your opinion on something?
  -> Explain1


==Explain1==
Lila?Smiling "Oh, no problem, {player_name}. What can I help you with?" 

* Mr Calindas is working on some long-term planning and applying, and he wants community input.
  -> Explain2
* I was hoping to talk to you about what you want for Bloomwood. Not, like, today, but going forward.
  -> Explain2

==Explain2==

Lila?Neutral "Oh that sounds great! I wish more community providers asked what the community needed. What kind of opinions are you looking for?"

Lila?Neutral "Too many times, I hear about expensive initaitives or complicated projects that don't actually fix the problems people are facing every day."

* What healthcare related resources do the community center users need?
  -> Suggestion1
* What community health offerings or programs would you want to like to see more of?
  -> Suggestion1

==Suggestion1==

~ notification = "Lila_Day 1_Parenting classes could help parents with their children's health_Mrcalindas1-1"
# notification Lila_Day 1_Parenting classes could help parents with their children's health_Mrcalindas1-1 


Lila?Smiling "Obviously my first thought is about families and kids. I'd love my parents to have access to classes about what to look for in their children's health."
Lila?Smiling "Not everyone knows basic first aid, or how to react to a fever. I think that would be helpful." 
Lila?Smiling "Oh, and it can be hard to get to the health center for people who live on the outskirts of Bloomwood. So maybe public transportation vouchers for health events." 

* That sounds really thoughtful. Can you think of anything else that the community would need to know?
  -> Suggestion2


==Suggestion2==

~ notification = "Lila_Day 1_Education can reduce the stigma faced by LGBTQIA+ community members_Mrcalindas1-2"
# notification Lila_Day 1_Education can reduce the stigma faced by LGBTQIA+ community members_Mrcalindas1-2 


Lila?Smiling "Well, it's important for communities of color and LGBTQIA folks get the help they need with no judgements."
Lila?Smiling "We have historically faced a lot of stigma, and that harms access to care. Studies show that even one supportive adult can prevent a transgender kid from committing suicide. We should be talking about that."
Lila?Smiling "Oh, and this might seem really obvious, but mental health resources are useful for everyone. We all get stressed or have hard times." 

* Wow, Lila. I didn't know how valuable a single supportive adult can be! I'll bring all this up with Mr. Calindas.
  -> Goodbye

==Goodbye==
Lila?Smiling "I'm so happy I could help like this. Let me know if you need any other ideas, okay? I'm going to go grab some tea. I'll see you around okay? Don't forget to take a break!" 

* I won't! Thanks for your help, Lila. Enjoy the tea!
 -> END
* I'm going to take a quick break right now. Thanks, Lila! See you soon!
 -> END
