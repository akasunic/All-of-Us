VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrslee?Smiling "{player_name}! Happy to see you!"

* I’m great Mrs. Lee. How are you? 
  -> Chat1
* I’m happy to see you, too, Mrs. Lee! 
  -> Chat1

==Chat1==

Mrslee?Smiling "Giancarlo say he stop cooking lessons while his mother settle in. Do you want to join Eddie and I? He learn Ethiopian food from his roommate."

Mrslee?Smiling "We make misir wat. Red lentil stew. He pick up injera on his way home – that is bread you use to eat wat. He invite Lila and Trisha too."

* Red lentils? I’ve never cooked with those!
  -> Chat2
* I love that all of Bloomwood wants to feed me. I’m in. Can I ask a question?
  -> Explain1

==Chat2==

Mrslee?Smiling "Eddie decide to learn vegetarian cooking to help manage his high blood pressure. Giancarlo gave him hand out about lifestyle changes, and now even his jap chae recipe is vegetarian!"

Mrslee?Smiling "Red lentils have lot of fiber. And protein. Very healthy! Very inexpensive!"

Mrslee?Smiling "I never eat much meat, but Eddie is taking this very serious. He still eat some egg and some fish, sometimes."

* Mrs. Lee, that’s awesome! Good for Eddie.
  -> Chat3
* I love how supportive you are! Can I ask you a question?
  -> Explain1

==Chat3==

Mrslee?Smiling "We already eat lots of rice. And vegetables. And tofu. But I hear about a lot of hamburgers and pepperoni at school."

Mrslee?Smiling "I like lentils much better than pepperoni."

* I think I like both for different reasons. Say, can I ask a question? 
  -> Explain1


==Explain1==

Mrslee?Neutral "I always try my best to answer, {player_name}."

How did you foster such a supportive relationship with Eddie?
->Explain2

==Explain2==

Mrslee?Neutral "I love Eddie very much, but it not always easy to talk. We got very close after Dr. Lee died. He loved his grandfather, but I think he also feel a little afraid." 

Mrslee?Neutral "One night, I say to Eddie "Anything you need to say, I listen." And he talk. He talk about girls. And school. And his parents. He feel sad a lot. And alone sometimes." 

Mrslee?Neutral "I try hard to listen, no judgment. And when it feel hard, I say so. Then, he ask me questions, and those feel hard too!"

Mrslee?Neutral "Eddie and I work as a team to learn together, I guess. It take practice." 

* Mrs. Lee! That’s so sweet. 
 -> Explain3
* What would you tell a young person trying to talk about hard topics with family?
  -> Suggestion1

==Explain3==

Mrslee?Smiling "It feel good now. When he has low week, we video chat and he ask advice. Or teach me things I never knew, like how to book train tickets online."

Mrslee?Smiling "I still feel nervous when he bring up girls. But he ask me about big feelings, and I try to be modern." 

* Can you tell me how you learned skills together? 
  -> Suggestion1
* You said it took practice. What do you mean?
  -> Suggestion1

==Suggestion1==
~ notification = "Mrslee_Day 4_Family counseling can help families learn communication skills together; counseling doesn’t need to wait until there is a problem_Elisa4-3"
# notification Mrslee_Day 4_Family counseling can help families learn communication skills together; counseling doesn’t need to wait until there is a problem_Elisa4-3 

Mrslee?Neutral "Eddie’s school recommended a grief counselor when Dr. Lee died. It was so sudden, and Eddie was so sad."

Mrslee?Neutral "For a while, we went together. The counselor gave us a lot of tools to use." 

Mrslee?Neutral "I thought family counseling was for bad kids. Sometimes, family counseling is to learn new skills! I never knew." 

* What is one thing you learned in family counseling? 
  -> Suggestion2
* What skill did you start with?
 ->Suggestion2

==Suggestion2==
~ notification = "Mrslee_Day 4_Try communicating in writing if talking feels too hard_Elisa4-4"
# notification Mrslee_Day 4_Try communicating in writing if talking feels too hard_Elisa4-4 


Mrslee?Smiling "One of the things I got from the counselor was that caretakers need community. All by myself, I am only me. But with friends, I am stronger for Eddie."

Mrslee?Smiling "I start small. At first, I call Nicole – Lila’s mom. And I say "Nicole. Kids are hard." 

Mrslee?Smiling "She laugh and laugh."  

Mrslee?Smiling "What was I saying that was new? When she stop laughing, we talk. She give me words for the hard things Eddie needed to know." 

Mrslee?Smiling "She also send me to the library to check out whole list of books." 

Mrslee?Smiling "Eddie used to write questions and leave them on post-it notes inside the cover. I would write answers, in both English and Korean."

Mrslee?Smiling "Sometimes talking is hard, but writing is easier. Now we use email instead." 


* Mrs. Lee, I really appreciate this. You’ve given me a lot to think about.
  -> Goodbye

==Goodbye==

Mrslee?Smiling "Thank you! I feel proud thinking about how hard Eddie and I work together."

* See you soon, Mrs. Lee!
  ->END

