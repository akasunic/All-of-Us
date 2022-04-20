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

* Well, it's true. You're such a fitness inspiration. It's really great to talk with you. 
  -> Chat2
* Well, it's true. You're always trying to keep active...in fact maybe you could help me with something?
  -> Explain1

==Chat2==
Mrslee?Smiling "Oh, {player_name} so kind. My aerobic class make me feel energy! Really good for you! You try them." 

* Well, I actually want to ask some questions about your classes.
  -> Explain1
* That's actually, great to hear. I actually am looking for some information about classes.
  -> Explain1

==Explain1==

Mrslee?Smiling "I really enjoy these class, happy to help. What your question?"

* Mr. Calindas' mother is moving to Bloomwood, and she needs great activities.
  -> Explain2
* Mr. Calindas' mother is moving here, and I was wondering if you could tell me what you get from aerobics.
  -> Explain2

==Explain2==
Mrslee?Smiling "She move here? Live with Giancarlo? That is nice. Aerobic activity very good for mind and body." 

Mrslee?Smiling "I read that exercise fights depression. And dementia. Getting older is hard. Exercise help."

* Are they? Can you tell me more about that?
  -> Suggestion1
* Can you tell me more about the benefits of exercise for seniors?
  -> Suggestion1

==Suggestion1==

~ notification = "Mrslee_Day 2_The community center offers a variety of classes that might suit Mother Calindas_Mrcalindas2-1"
# notification Mrslee_Day 2_The community center offers a variety of classes that might suit Mother Calindas_Mrcalindas2-1 

Mrslee?Smiling "Well, they say she need to talk to doctor before start new physical activity. I guess Giancarlo know that already. 

Mrslee?Smiling "Maybe Giancarlo can bring her here. We can help pick right class for her comfort. Swimming, aerobics, tai chi. The Community Center offers little of everything." 

* That sounds great! What about the social benefits?
  -> Suggestion2


==Suggestion2==

~ notification = "Mrslee_Day 2_Group exercise classes offer social physical, and mental benefits_Mrcalindas2-2"
# notification Mrslee_Day 2_Group exercise classes offer social physical, and mental benefits_Mrcalindas2-2 


Mrslee?Smiling "Oh, yes! For elder, group exercise very social. Lot of friend in my class."

Mrslee?Smiling "When I lose Dr. Lee, Eddie feel stress. Worry that I would be all alone, and sad." 

Mrslee?Smiling "Exercise class give me many good things. So many friends. So many people to care."

Mrslee?Smiling "I stay fit, I have strength. It give me so much feeling of independence! It help me feel strong and my balance good. I love it!"


* This is perfect information Mrs. Lee. Thank you so much for your time!
  -> Goodbye

==Goodbye==
Mrslee?Smiling "Thank you for ask, {player_name}. Tell me when she here. I love to meet her. Now I go get ready to volunteer with Lila today. See you!" 

* Goodbye, Mrs. Lee. Have a wonderful day!
  ->END
* Goodbye, Mrs. Lee, have a great time with Lila and the kiddos today!
  ->END
