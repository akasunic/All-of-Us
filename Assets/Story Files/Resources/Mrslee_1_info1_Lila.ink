VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey, {player_name}!! How are you?"

* Hi! It's awesome running into you.
  -> Chat1
* Aw, hey! My day just got better because I ran into you!
  -> Chat1

==Chat1==
Lila?Smiling "Well you always know where to find me; five days a week. Four seasons a year!"
Lila?Smiling "Did you hear that Mrs. Lee is going to be helping with my class?"

* That's great news for both of you! 
  -> Chat2
* That's awesome. I ran into Mrs. Lee earlier; I know you're friends.
  -> Explain1

==Chat2==
Lila?Smiling "I am excited to work with her. I'm glad she asked about volunteer opportunities!" 

* That is very sweet. You are close with Eddie, right?
  -> Chat3
* Nice! Speaking of Mrs. Lee... I could use your help.
  -> Explain1

==Chat3==
Lila?Smiling "Yeah! We were neighbors growing up. We did the whole "walking to school together" thing as kids."

* Awww. Would be okay, then,  if I asked you to help Mrs. Lee?
  -> Explain1
* Can I ask you for advice regarding Eddie and Mrs Lee?
  -> Explain1

==Explain1==
Lila?Smiling "Ohh yes! I haven't seen her yet this morning, I've been so busy running around. I usually see her before her aerobics class."
Lila?Smiling "It's so good to see her involved in so many things here at the Community Center. Yesterday she asked me how I felt about native plants in the front garden bed!"
Lila?Neutral "She's okay, right?"

* She's nervous about visiting the pharmacy, and I'm trying to help. 
  -> Explain2

==Explain2==
Lila?Neutral "Oh! Eddie mentioned that she offered to pick up a prescription for him. Is this related?"
Lila?Neutral "He mentioned that he has an appointment next month with a new doctor closer to school, but he needs one more <a>refill</a>."

* It is! She's nervous about getting it right.
  -> Suggestion1
  
==Suggestion1==
~ notification = "Lila_Day 1_Mrs. Lee could ask Lila to pick up the prescription for her_Mrslee1-1"
# notification Lila_Day 1_Mrs. Lee could ask Lila to pick up the prescription for her_Mrslee1-1

Lila?Neutral "I feel her pain; the first time I picked up a prescription for Trisha, I must have double checked it 20 times."
Lila?Neutral "It's hard when doctors use a <a>brand-name</a> for a drug and the pharmacy fills with a <a>generic</a>. How is anyone supposed to just KNOW that?" 
Lila?Smiling "Tell you what - I need to pick up a prescription for Trisha tonight; can I pick up Eddie's prescription up for Mrs. Lee? 
Lila?Smiling "Have her stop by and give me the information, if that would help. "

* I'm doubt she would be comfortable with that... maybe a pep talk instead?
  -> Suggestion2
* That would help her feel better about today, but what about next time? 
  -> Suggestion2

==Suggestion2==
~ notification = "Lila_Day 1_Mrs. Lee could ask Lila to come to the pharmacy with her so she has support asking clarifying questions_Mrslee1-2"
# notification Lila_Day 1_Mrs. Lee could ask Lila to come to the pharmacy with her so she has support asking clarifying questions_Mrslee1-2

Lila?Smiling "Maybe she needs some in-person support; in that case, I'm happy to go with her. She can do this, but I can be her back-up!"

* I think having you with her would make Mrs. Lee feel more confident.
  -> Goodbye

==Goodbye==
Lila?Smiling "Sounds good. I can take a break from here whenever!"

* Thanks, you rock!
  ->END
* You're a great friend, Lila. Thank you.
  ->END