VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Lila?Neutral "Hey, {player_name}! I hear my glitter got tracked into the YA section of the library."

* Lila! Can you please tell Rashad that was <i>not</i> me?!
  -> Chat1
* Lila, I'm going to need you to clear my good name.
  -> Chat1

==Chat1==
Lila?Smiling "No way, I can finally take out books in peace without him following me with a vacuum. You know he carries a portable one?"

* I did not. That's... a lot.
  -> Chat2
* I did not. Actually, can I ask you for some advice?
  -> Explain1

==Chat2==
Lila?Smiling "Right? Sometimes I worry that Rashad is way too stressed. No one needs to be haunting the Mystery aisle, looking for stray glitter."

* Well, to be fair it is a lot more exciting with half the stuff he has to deal with.
  -> Chat3
* You know what? Could you give me some advice?
  -> Explain1

==Chat3==
Lila?Smiling "Oh? Well, if he ever needs more excitement, he can teach my class. He won't need to search for glitter, he'll be <i>covered</i> in it. Anyway, what are you up to?"

* I could use your advice. Do you remember when I asked about therapy?
  -> Explain1

==Explain1==
Lila?Neutral "I do remember! Did my information help?"

* You did help, a lot. That's why I'd like to ask you some more questions.
  -> Explain2

==Explain2==
Lila?Neutral "Okay, sure. I'm happy to help. Finding therapy resources can be difficult if you haven't done it before. Especially if you're looking for a Black therapist."

* Well, my friend hasn't seen a therapist before, and needs some advice on what to expect.
  -> Suggestion1
* Well, that's just it. What should someone look for in a therapist? How does it all work?
  -> Suggestion2

==Suggestion1==
Lila?Smiling "Well, you should find someone you feel comfortable talking to. Making a list of qualities you want in a therapist, and what you want to work on is useful."
Lila?Smiling "You can also do a little research yourself and look at some different common therapy methods to familiarize yourself with what you might like, and to see what's out there. Oh, and you should make sure they accept your insurance."

~ notification = "Lila_Day 3_You should feel comfortable talking to your therapist_Rashad3"
# notification Lila_Day 3_You should feel comfortable talking to your therapist_Rashad3
~ notification = "Lila_Day 3_Make a list if qualities you need in a therapist and what you want to work on_Rashad3"
# notification Lila_Day 3_Make a list if qualities you need in a therapist and what you want to work on_Rashad3
~ notification = "Lila_Day 3_Ask if they accept your insurance_Rashad3"
# notification Lila_Day 3_Ask if they accept your insurance_Rashad3

* {not Suggestion2} That's helpful. Do you have any advice about how the process works?
  -> Suggestion2
* That's great to know! Thanks so much, Lila.
  -> Goodbye

==Suggestion2==
Lila?Smiling "When I looked for a Black therapist, I used an online tool to search in our area and ask for recommendations. When I called, we set up an intake appointment to get to know each other."
Lila?Smiling "At the intake appointment, I asked questions about them and race-based stress to know if we were compatible. Getting recommendations from friends is also useful."

~ notification = "Lila_Day 3_At an intake appointment you talk to a therapist to see if you are a match_Rashad3"
# notification Lila_Day 3_At an intake appointment you talk to a therapist to see if you are a match_Rashad3
~ notification = "Lila_Day 3_Get a recommendation from friends"
# notification Lila_Day 3_Get a recommendation from friends
~ notification = "Lila_Day 3_Ask a therapist if they have experience with RBST_Rashad3"
# notification Lila_Day 3_Ask a therapist if they have experience with RBST_Rashad3

* {not Suggestion1} Wow, that sounds great. Can you recommend anything else?
  -> Suggestion1
* I'll take this, thank you! Thank you so much for being so open, Lila. Really.
  -> Goodbye

==Goodbye==
Lila?Smiling "Hey, mental health is necessary for all of us, right? If you ever need anything else, {player_name} I'm happy to help. Now I'm off to pick up Charlie from his weekly doggie daycare. Take care!"

* Thanks for your help, Lila. Have a good one!
  ->END
* Aww! Text pics! See you soon!
  ->END
