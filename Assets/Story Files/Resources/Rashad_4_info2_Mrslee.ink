VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==

Mrslee?Neutral "Hello {player_name}! Do you know if a lot of young people at the block party this weekend? My grandson visit!"

* Hi Mrs. Lee. Actually, yes. Elisa is running a succulent booth, and the whole neighborhood is coming out.
  -> Chat1
* It's good to see you Mrs. Lee. There will be plenty of things for you and Eddie to do together.
  -> Chat1

==Chat1==
Mrslee?Smiling "Oh, good. I want to make sure there thing for him to do. I do not want him to be so bored with me."

* Oh, Mrs. Lee he won't be bored with you. You're plenty exciting. Plus, you could teach him a lot.
  -> Chat2
* Oh, Mrs. Lee he won't be bored with you. You're plenty exciting. You know what? I could use your help.
  -> Explain1

==Chat2==
Mrslee?Smiling "Well, this is true. I look forward to spend time with Eddie because he know everything going on."
Mrslee?Smiling "Plus, I teach him little thing no one else know. Cooking with him is fun."

*You cook together? That sounds really sweet.
  -> Chat3
*You know what Mrs. Lee? Just hearing you say this makes me think you'd be perfect for something.
  -> Explain1

==Chat3==
Mrslee?Smiling "Yes! I teach you how to cook too, but Mr. Calindas say you hopeless in kitchen."
Mrslee?Smiling "But you probably learn more than you think. Eddie started with bag rice noodle, but eventually he learned my handmade Jap Chae and vegetable."

*Well, I may not be a great cook, but I do know people, and I think you may be perfect for something.
  -> Explain1
*I may not be the best cook, but I do think I know a great teacher when I see one. Maybe you can help me out with something, Mrs. Lee?
  -> Explain1

==Explain1==
Mrslee?Neutral "Oh? I can help." 

*Rashad wants to link seniors like you, and teens. I'd like to know what seniors may enjoy.
  -> Explain2
*Rashad thinks it would be a great idea to link seniors and teens together and want to know more about what seniors could want.
  -> Explain2

==Explain2==
Mrslee?Neutral "Really nice, {player_name}. Spend time with Eddie really make me happy. There so many little activity children do not learn. I am very helpful with this."
Mrslee?Neutral "I have more time, so I can learn thing he curious about and give him more information. I have so much time on my hands."

*That's what I was thinking. What do you think seniors may need?
  -> Suggestion1
*Well, you and Eddie have such a great relationship. How does that help you?
  -> Suggestion2

==Suggestion1==
Mrslee?Smiling "Seniors need someone to talk to and maybe do some errand. We talk, we laugh...Eddie learn about Korea when we are together. "
Mrslee?Smiling "It makes me feel so good to see how he grow. He know more about what it like to be old, and I have someone to talk to. A purpose."

~ notification = "Mrslee_Day 4_Seniors only need someone to talk to and perhaps do errands"
# notification rslee_Day 4_Seniors only need someone to talk to and perhaps do errands
~ notification = "Mrslee_Day 4_Teens can learn how it feels to get old"
# notification Mrslee_Day 4_Teens can learn how it feels to get old
~ notification = "Mrslee_Day 4_Seniors can feel a sense of purpose_Rashad4"
# notification Mrslee_Day 4_Seniors can feel a sense of purpose_Rashad4

* {not Suggestion2} Wow. A sense of purpose. What else happens?
  -> Suggestion2
* That's great to hear, Mrs. Lee.
  -> Goodbye

==Suggestion2==
Mrslee?Smiling "Rashad has good idea. Eddie teach me how to do thing on computer and phone, I teach Eddie life."
Mrslee?Smiling "Being close to elder give young people world perspective, show them age is good thing, and not to be anxious."
Mrslee?Smiling "Good for mind. We teach each other, important."

~ notification = "Mrslee_Day 4_Seniors can help relieve anxiety about aging_Rashad4"
# notification Mrslee_Day 4_Seniors can help relieve anxiety about aging_Rashad4

* {not Suggestion1} This sounds really great, Mrs. Lee. Do you have anything else?
  -> Suggestion1
* Thank you so much for talking to me about this, Mrs. Lee. I think I learned a lot.
  -> Goodbye

==Goodbye==
Mrslee?Smiling "I so happy I help, {player_name}. I go to exercise class now, but you say Rashad, I happy to help. See you!"

* Goodbye Mrs. Lee! Have a blast in there.
  ->END
* Thanks so much for your help, Mrs. Lee. Have the best time dancing. See you!
  ->END
