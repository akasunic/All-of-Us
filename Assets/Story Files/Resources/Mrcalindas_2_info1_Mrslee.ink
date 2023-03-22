VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrslee?Smiling "Hello {player_name}. How you today?" 

* Hello Mrs. Lee! I'm so excited I ran into you!
  -> Chat1
* Hello Mrs. Lee! I'm doing well now that I ran into you!
  -> Chat1

==Chat1==

Mrslee?Smiling "Me? Oh! That is very nice." 

* Well, it's true. It's always great to talk with you. 
  -> Chat2
* It's true ...in fact maybe you could help me with something?
  -> Explain1

==Chat2==
Mrslee?Smiling "Oh, {player_name} you are so kind. My <a>aerobics</a> class makes me feel good! Maybe sometime you can join me." 

* Well, I actually want to ask some questions about your classes.
  -> Explain1
* That's great to hear! I  am looking for some information about classes.
  -> Explain1

==Explain1==

Mrslee?Smiling "What is your question? I want to help."

* Mr. Calindas's mother is moving to Bloomwood, and she needs great activities.
  -> Explain2
* Mr. Calindas's mother is moving here. Can we talk about aerobics class?
  -> Explain2

==Explain2==
Mrslee?Smiling "She is moving here? To live with Giancarlo? That is nice. She might join a class with me! Aerobic activity is very good for both mind and body." 

Mrslee?Smiling "I read that exercise fights depression. And <a>dementia</a>. Getting older is hard. Exercise helps."

* How would one get started?
  -> Suggestion1
* What do you suggest as a first step?
  -> Suggestion1

==Suggestion1==

~ notification = "Mrslee_Day 2_The Community Center offers a variety of classes that might suit Mother Calindas_Mrcalindas2-1"
# notification Mrslee_Day 2_The Community Center offers a variety of classes that might suit Mother Calindas_Mrcalindas2-1 

Mrslee?Smiling "Well, they say she needs to talk to doctor before starting new physical activity. I guess Giancarlo knows that already."

Mrslee?Smiling "Maybe Giancarlo can bring her here. We can help pick the right class for her comfort. Swimming, aerobics, <a>tai chi</a>. The Community Center offers a little of everything." 


* That sounds great! What about the social benefits?
  -> Suggestion2


==Suggestion2==

~ notification = "Mrslee_Day 2_Group exercise classes offer social, physical, and mental benefits_Mrcalindas2-2"
# notification Mrslee_Day 2_Group exercise classes offer social, physical, and mental benefits_Mrcalindas2-2 


Mrslee?Smiling "Oh, yes! For elders, group exercise can be very social. I see many friends in my class."

Mrslee?Smiling "When I lost Dr. Lee, Eddie felt a lot of stress. I think he worried that I would be all alone, and sad." 

Mrslee?Smiling "Exercise class gives me many good things. So many friends. So many reasons to wake up. I see happy faces every day."

Mrslee?Smiling "I stay healthy, I have strength. It give me a feeling of independence! It helps me feel strong and my balance is good. I love it!"


* This is perfect information, Mrs. Lee!
  -> Goodbye

==Goodbye==
Mrslee?Smiling "Thank you for asking, {player_name}. Tell me when she is here. I would love to meet her. Now I need to get ready to volunteer with Lila today. See you!" 

* Goodbye, Mrs. Lee. Have a wonderful day!
  ->END
* Goodbye, Mrs. Lee, have a great time with Lila and the kiddos today!
  ->END
