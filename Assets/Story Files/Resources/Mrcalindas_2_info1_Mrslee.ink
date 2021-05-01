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

* Well, it's true. You're always trying to keep fit and engaged. It's really great to talk with you. 
  -> Chat2
* Well, it's true. You're always trying to keep fit and engaged...in fact maybe you could help me with something?
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
* Mr. Calindas' mother is moving here, and I think this might be a fun activity for her.
  -> Explain2

==Explain2==
Mrslee?Smiling "She move here? Live with Giancarlo? That is nice. Aerobic activity very good for mind and body." 

* Are they? Can you tell me more about that?
  -> Suggestion1
* Can you tell me more about the benefits of exercise for seniors?
  -> Suggestion2

==Suggestion1==
Mrslee?Smiling "Well, I think she need to talk to doctor before start new physical activity. She maybe know that. Sign up on computer or at Community Center front desk." 

~ notification = "Mrslee_Day 2_Talk to a doctor before you start a physical routine"
# notification Mrslee_Day 2_Talk to a doctor before you start a physical routine
~ notification = "Mrslee_Day 2_You can sign up for classes online or in person"
# notification Mrslee_Day 2_You can sign up for classes online or in person

* {not Suggestion2} That sounds great, do you know anything else about the health or social benefits?
  -> Suggestion2
* This is perfect information, Mrs. Lee. Thank you so much for your time!
  -> Goodbye

==Suggestion2==
Mrslee?Smiling "Oh, yes! For elder, group exercise very social. Lot of friend in my class."
Mrslee?Smiling "I stay fit, strength give me independence! It help me feel strong and my balance good. I love it!"

~ notification = "Mrslee_Day 2_Exercise Improves Social Wellness_Mrcalindas2"
# notification Mrslee_Day 2_Exercise Improves Social Wellness_Mrcalindas2
~ notification = "Mrslee_Day 2_Seniors can stay active using aerobic classes_Mrcalindas2"
# notification Mrslee_Day 2_Seniors can stay active using aerobic classes_Mrcalindas2
~ notification = "Mrslee_Day 2_Staying active can improve your strength and balance_Mrcalindas2"
# notification Mrslee_Day 2_Staying active can improve your strength and balance_Mrcalindas2

* {not Suggestion1} That sounds amazing! Is there anything else I should know?
  -> Suggestion1
* This is perfect information Mrs. Lee. Thank you so much for your time!
  -> Goodbye

==Goodbye==
Mrslee?Smiling "Thank you for ask, {player_name}. Tell me when she here. I love to meet her. Now I go get ready to volunteer with Lila today. See you!" 

* Goodbye, Mrs. Lee. Have a wonderful day!
  ->END
* Goodbye, Mrs. Lee, have a great time with Lila and the kiddos today!
  ->END
