VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
~ new_contact = "Lila"
# new_contact

Lila?Smiling "Hey, {player_name}!! How are you?"

* Hi! It's awesome running into you here.
  -> Chat1
* Aw, hey! My day just got better because I ran into you!
  -> Chat1

==Chat1==
Lila?Smiling "Well you always know where to find me. If you didn't, well, I work here most every day."

* Do you enjoy it?
  -> Chat2
* That's awesome. I ran into Mrs. Lee, you two are very close I remember.
  -> Explain1

==Chat2==
Lila?Smiling "I really do. I enjoy this place and the people. Oh! I even got Mrs Lee a volunteering position here."

* That is very sweet. You were close with Eddie, right?
  -> Chat3
* Nice! Speaking of Mrs. Lee... I could use your help.
  -> Explain1

==Chat3==
Lila?Smiling "Yeah! We were neighbors growing up. We did the whole "walking to school together" thing as kids."

* Aw, then would you mind if I asked you to help Mrs. Lee?
  -> Explain1
* That sounds like a really nice memory. Can I ask you for something regarding Eddie and Mrs Lee?
  -> Explain1

==Explain1==
Lila?Smiling "Ohh yes! I haven't seen her yet this morning, I've been so busy running around. I know she takes her aerobics class today."
Lila?Smiling "She's really been coming out of her shell recently... being around other people definitely helps. I love to see it. She's okay, right?"

* She's actually a little discouraged from an encounter at the pharmacy.
  -> Explain2
* She needs some encouragement speaking up for herself at the pharmacy.
  -> Explain2

==Explain2==
Lila?Neutral "I see, yeah. Oh, Mrs Lee. She needs encouragement stepping into her power. She can do hard things, but I understand that she doesn't really feel it though."

* It's so nice to hear you pump her up like this.
  -> Suggestion1
* Would you feel comfortable going with her to the pharmacy?
  -> Suggestion2

==Suggestion1==
~ notification = "Lila_Day 1_Maybe it’s time i give her a big pep talk"
# notification Lila_Day 1_Maybe it’s time i give her a big pep talk

Lila?Neutral "I say these things to her all the time, but maybe it's time for a big pep talk."

* Maybe you could go with her to the pharmacy; having a friend support her might make all the difference.
  -> Suggestion2
* She could definitely use a pep talk and a friendly ear! 
  -> Goodbye

==Suggestion2==
~ notification = "Lila_Day 1_Lila can go to the pharmacy with Mrs. Lee._Mrslee1-1"
# notification Lila_Day 1_Lila can go to the pharmacy with Mrs. Lee._Mrslee1-1

Lila?Smiling "That's easy enough! If going with her helps Mrs. Lee feel more confident, I'm in. I love that lady."

* I think having you with her would make Mrs. Lee feel more confident.
  -> Goodbye

==Goodbye==
Lila?Smiling "Sounds good. I can take a break from here whenever!"

* Thanks, you rock!
  ->END
* You're a great friend, Lila. Thank you.
  ->END
