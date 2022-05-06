VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Lila?Smiling "Hey, {player_name}. I'll be right there... I want to talk to you!

* Sure thing, Lila!
  -> Chat1
* Is everything okay?
  -> Chat1

==Chat1==
Lila?Smiling "Things here have been getting busier every day! I'm glad Mrs. Lee is here; I've been running around all day. It's nice to have you as my excuse to sit for a second!"

* Oh, I'm always happy to be an excuse for a break!
  -> Chat2
* I'm so glad you and Mrs. Lee have each other!
  -> Explain1

==Chat2==
Lila?Smiling "Thanks! I've been meaning to thank you for supporting Mrs. Lee. She told me you have two have been talking."
Lila?Smiling "Eddie asked me if he should be worried about her, and I told him that she has friends and a solid <a>support system</a> here in Bloomwood." 

* She's so great! I'm happy to help.
  -> Chat3
* You heard she scheduled her appointment?
  -> Explain1

==Chat3==
Lila?Smiling "She has told both me and Eddie how much she trusts you. So I wanted to talk to you about something."

* Aw, I'm so glad to hear that. Something about her appointment?
  -> Explain1

==Explain1==
Lila?Neutral "Yeah, she scheduled it! I’m really proud of her for taking a proactive role in her health."
Lila?Neutral "I have been trying to get her to address her headaches for a couple of months, and she just <a>brushed me off</a>."
Lila?Neutral "Do you remember her husband, Dr. Lee?"

* Yeah, she has told me a little bit about him.
  -> Explain2
* I never met him, but he and Mr. Calindas were friends. 
  -> Explain2

==Explain2==
Lila?Neutral "She’s been kind of <a<shocked</a> since he passed. It felt like she was sleepwalking for a while - probably until the last few months with Eddie away at school."
Lila?Neutral "When he went away, something shifted. She started attending fitness classes, showing up at Library workshops. Asking about volunteer roles here."
Lila?Neutral "I think part of her really wants to make sure Eddie focuses on school instead of worrying about her, which is really sweet. I love their dynamic so much."
Lila?Neutral "So, my point is - I've been trying to <a>brainstorm</a> ways we can make Mrs. Lee more comfortable with her appointment."

* Great idea! What were you thinking?
  -> Suggestion1
* I think she's even more anxious about this than the pharmacy!
  -> Suggestion1

==Suggestion1==
~ notification = "Lila_Day 3_Mrs. Lee could ask Lila to go to her doctor appointment_Mrslee3-2"
# notification Lila_Day 3_Mrs. Lee could ask Lila to go to her doctor appointment_Mrslee3-2

Lila?Smiling "We could suggest that I will go to the appointment with her. She might not even know that having a friend along is an option."
Lila?Smiling "Having me in the waiting room might make the whole thing feel less intimidating, you know?" 

* Hmmm. What are the downsides to that idea? 
  -> OptionalQuestDetails1
* Oh! Interesting thought... 
  -> Suggestion2

==OptionalQuestDetails1==
Lila?Neutral "I don't want her to think she's only capable if she has someone along with her. Also, I wouldn't want her to feel like an imposition or a bother."

* Excellent point! I don't think she'd feel good about that. 
 -> Suggestion2

==Suggestion2==
~ notification = "Lila_Day 3_Mrs. Lee could call Eddie and practice her questions with him_Mrslee3-1"
# notification Lila_Day 3_Mrs. Lee could call Eddie and practice her questions with him_Mrslee3-1

Lila?Neutral "When Eddie was home, he mentioned that he'd like to be more involved. You know how she has regular video chats with her Korean friends? I think he's a little jealous."
Lila?Smiling "After I was done teasing him, I realized that he'd be a great resource for helping Mrs. Lee feel more confident. They looked over the drug information portal and read up on <a>high blood pressure</a> together."
Lila?Smiling "He knows how to use the tools, and could help her feel more in control. Plus, it would give him a deeper insight into his family medical history." 

* Huh..We should ask her what she thinks!
  -> Goodbye
* Oh! I like that a lot! It would do both of them good!
  -> Goodbye

==Goodbye==
Lila?Smiling "Oh, shoot, I gotta get back to work. I hope this was helpful. Let me know!"

* Okay, thanks Lila
  ->END
* You're such a help. Thank you! 
  ->END
