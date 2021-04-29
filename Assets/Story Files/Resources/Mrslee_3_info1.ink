VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Lila?Smiling "Hey, {player_name}. Sit down and I'll be right there... I want to talk to you!

* Okay, Lila
  -> Chat1
* Preparing for the Block Party?
  -> Chat1

==Chat1==
Lila?Smiling "Things here have been getting busier every day! Im glad mrs lee is here i've been running around all day its nice to have you as my excuse to sit for a second"

Glad to see you.
  -> Chat2
Can we talk about Mrs. Lee?
  -> Explain1

==Chat2==
Lila?Smiling "Yes, I've been meaning to thank you for supporting Mrs. Lee. She told me you have two have been talking."

I care about her too!
  -> Chat3
So you heard she scheduled her appointment
  -> Explain1

==Chat3==
Lila?Smiling "She trusts you, which is why I know she would be fine with us speaking about her right now."

Aw, awesome.
  -> Explain1

==Explain1==
Lila?Neutral "Yeah, she scheduled her appointment and i’m really proud of her for taking a proactive role in the relationship she has with her health. Her husband, you remember he was Dr Lee?"

Yeah, she has told me a little bit about him.
  -> Explain2
I think so?
  -> Explain2

==Explain2==
Lila?Neutral "He wasn’t very kind to her, and I think she suffered on the inside. She’s been kind of shocked since he passed… probably until the last few months with Eddie away at school."
Lila?Neutral "She’s stepped up in her life, big time! And, wow, this past week since you’ve been talking and supporting her, {player_name}!"
Lila?Neutral "I'm trying to think how we can make Mrs. Lee more comfortable with her appointment."

Yeah, what do you think?
  -> Suggestion1
She's seeeriously anxious
  -> Suggestion2

==Suggestion1==
Lila?Smiling "You can suggest that I will go to the appointment with her."
~ notification = "Lila_Day 3_Lila can support Mrs. Lee by going to the appointment with her_Mrslee3"
# notification Lila_Day 3_Lila can support Mrs. Lee by going to the appointment with her_Mrslee3

* Hmmm.
  -> Suggestion2
* I think that's a good idea.
  -> Goodbye

==Suggestion2==
Lila?Neutral "I could even, like, write down what I think her symptoms are? To, like, take the pressure off?"
~ notification = "Lila_Day 3_Lila can write down Mrs. Lee's symptoms by assuming her problems"
# notification Lila_Day 3_Lila can write down Mrs. Lee's symptoms by assuming her problems

* Huh..
  -> Suggestion1
* Hmm
  -> Goodbye

==Goodbye==
Lila?Smiling "Oh, shoot, I gotta get back to work. I hope this was helpful. Let me know!"

* Okay, thanks Lila
  ->END
* No problem
  ->END
