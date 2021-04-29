VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==

Mrslee?Neutral "Hello {player_name}! Do you know if there will be a lot of young people at the Block Party this weekend? My grandson is visiting."

* Hi Mrs. Lee. Actually, yes. Elisa is running a succulent booth, and the whole neighborhood is coming out.
  -> Chat1
* It's good to see you Mrs. Lee. There will be plenty of things for you and Eddie to do together.
  -> Chat1

==Chat1==
Mrslee?Smiling "Oh, good. I want to make sure there's thing for him to do. I don't want him to be so bored with me."

* Oh, Mrs. Lee he won't be bored with you. You're plenty exciting. Plus, you could teach him a lot.
  -> Chat2
* Oh, Mrs. Lee he won't be bored with you. You're plenty exciting. You know what? I could use your help.
  -> Explain1

==Chat2==
Mrslee?Smiling "Well, it is true. I look forward to spending time with Eddie because he knows everything that's going on."
Mrslee?Smiling "Plus, I can teach him little things no one else can. Cooking with him is fun."

*You cook together? That sounds really, sweet.
  -> Chat3
*You know what Mrs. Lee? Just hearing you say this makes me think you'd be perfect for something.
  -> Explain1

==Chat3==
Mrslee?Smiling "Yes! I would teach you how to cook too, but Mr. Calindas said you're hopeless."
Mrslee?Smiling "Though, I think you probably can learn more than you think. Eddie couldn't boil water either, but eventually he learned a lot."

*Well, I may not be a great cook, but I do know people, and I think you may be perfect for something.
  -> Explain1
*I may not be the best cook, but I do think I know a great teacher when I see one. Maybe you can help me out with something, Mrs. Lee?
  -> Explain1

==Explain1==
Mrslee?Neutral "Oh? How can <i>I</i> help?" 

*Rashad wants to link seniors like you, and teens. I'd like to know what seniors may enjoy.
  -> Explain2
*Rashad thinks it would be a great idea to link seniors and teens together and want to know more about what seniors could want.
  -> Explain2

==Explain2==
Mrslee?Neutral "That sounds really nice, {player_name}. Spending time with Eddie really makes me happy, plus there's so many little activities children haven't learned and I think I'm very helpful to him."
Mrslee?Neutral "I just have more time to do things, so I can look up things he is curious about and give him more information. I have so much time on my hands."

*That's what I was thinking. What do you think seniors may need?
  -> Suggestion1
*Well, you and Eddie have such a great relationship. How does that help you?
  -> Suggestion2

==Suggestion1==
Mrslee?Smiling "Seniors just need someone to talk to and maybe do light errands. We talk, we laugh...Eddie learns a lot about our culture when we are together. "
Mrslee?Smiling "It makes me feel so good to see how he's grown. I feel like he knows more about how it feels to get old, and I feel like I have something to do. A sense of purpose."

~ notification = "Mrslee_Day 4_Seniors only need someone to talk to and perhaps do errands"
# notification
~ notification = "Mrslee_Day 4_Teens can learn how it feels to get old"
# notification
~ notification = "Mrslee_Day 4_Seniors can feel a sense of purpose_Rashad4"
# notification

* {not Suggestion2} Wow. A sense of purpose. What else happens?
  -> Suggestion2
* That's great, to hear Mrs. Lee.
  -> Goodbye

==Suggestion2==
Mrslee?Smiling "Rashad has a good idea here. Eddie may teach me how to do new things on the computer or phone, but I can teach him how to look at life differently."
Mrslee?Smiling "Being close to a senior can help young people learn more about the world and show them aging is a good thing, and not to be anxious."
Mrslee?Smiling "It's good for your mental health. We teach each other, that's important."

~ notification = "Mrslee_Day 4_Seniors can help relieve anxiety about aging_Rashad4"
# notification

* {not Suggestion1} This sounds really great Mrs. Lee. Do you have anything else?
  -> Suggestion1
* Thank you so much for talking to me about this Mrs. Lee. I think I learned a lot.
  -> Goodbye

==Goodbye==
Mrslee?Smiling "I'm so happy I could help, {player_name}. I'm heading off to my exercise class now, but you tell Rashad, I'd be happy to help. See you soon!"

* Goodbye Mrs. Lee! Have a blast in there.
  ->END
* Thanks so much for your help, Mrs. Lee. Have the best time dancing. See you!
  ->END
