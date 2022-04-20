VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==

Mrslee?Neutral "Hello {player_name}! How you been? I’m excited to see Eddie but weekends are too short."

* Ugh, tell me about it!
-> Chat1
* I'm sure Eddie will be so happy to see you!
-> Chat1

==Chat1==
Mrslee?Smiling "I'm happy Eddie is coming but I want to make sure there thing for him to do. I do not want him to be so bored with me."

* Oh, Mrs. Lee I doubt that. There’s a lot he can learn from you.
-> Chat2
* But you're so much fun, Mrs. Lee. That reminds me, I might need your help.
-> Explain1

==Chat2==
Mrslee?Smiling "You’re right. I like to spend time with Eddie because he know everything going on."
Mrslee?Smiling "And I teach him something no one else know. When we cook together we laugh a lot."

*You cook together? That sounds really wholesome and sweet.
-> Chat3
* Hearing you talk about this makes me think you'd be perfect for something.
-> Explain1

==Chat3==
Mrslee?Smiling "Yes all the time, I can give you lesson some time, but Mr. Calindas say you are very bad in kitchen."
Mrslee?Smiling "You learn faster than you think. Eddie started with bag rice noodle, now he make handmade Jap Chae and vegetable."

* Oh! More cooking lessons. I"m in. I do have a related question, though.
-> Explain1
* I’m a terrible cook but..Can I ask you for something?
-> Explain1

==Explain1==
Mrslee?Neutral "Oh? I can help." 

* Rashad is working on a new program to connect community elders and young people.
-> Explain2
* What do you get out of connecting with the youth? Rashad's working on a thing.
-> Explain2

==Explain2==
Mrslee?Smiling "That sound really nice, {player_name}. When Eddie spend time with me - I feel happy. There so many little activity children never learn. I am very helpful with this."

Mrslee?Neutral "They never tell me how lonely it is to get older. Or maybe I never listen. I have so much time on my hands."

Mrslee?Smiling "In some ways, that is good. I help Lila with kids at the community center. Many young parents rely on other adults to help."

* That’s a good point. What do you think seniors may need?
-> Suggestion1
* Well, you and Eddie have such a great relationship. How does that help you?
-> Suggestion1

~ notification = "Mrslee_Day 4_Social connections support better cognitive and mental health_Rashad4-3"
# notification Mrslee_Day 4_Social connections support better cognitive and mental health_Rashad4-3

==Suggestion1==
Mrslee?Smiling "Seniors need someone to talk to. A purpose. And maybe someone to do some errand. Eddie learn about Korea when we are together. We talk, we laugh... "

Mrslee?Smiling "It makes me feel so good to see how he grow. I can introduce you to my friends at the community center to learn more. "

Mrslee?Neutral "Some of my fitness class friends ... borrow ... Eddie sometimes because they have no young people to help move this box or that trunk. He love to help."

* Wow. A sense of purpose. What else happens? 
-> Suggestion2

* Eddie helps other seniors too? Maybe Rashad really is onto something!
 -> Suggestion2

 ~ notification = "Mrslee_Day 4_Intergenerational connections provide benefits for the entire community_Rashad4-4"
# notification Mrslee_Day 4_Intergenerational connections provide benefits for the entire community_Rashad4-4

==Suggestion2==
Mrslee?Smiling "Rashad has good idea. Eddie teach me how to do thing on computer and phone, I teach Eddie life. Good for mind. We teach each other, important."
Mrslee?Smiling "Life is hard. Connecting to help each other make it easier. Give teen resources and experience. Give seniors purpose and happiness. Maybe make things easier on parents in the bargain." 

Mrslee?Smiling "When I was little girl, we had all adults. Aunts. Uncles. Grandparents. Everyone was close. Now, everybody very busy."

Mrslee?Smiling "When program ready, I tell my friends. We post flyer on bulletin board at Community Center."

* That would be fantastic, Mrs. Lee.
-> Goodbye

==Goodbye==
Mrslee?Smiling "Happy I help, {player_name}. I go to exercise class now, but you say Rashad, I happy to help. See you!"

* Goodbye Mrs. Lee! Hope you have a good workout.
->END




