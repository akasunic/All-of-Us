VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrslee?Smiling "Hello {player_name}. How are you doing today?" 

* Hello Mrs. Lee! I'm so excited I ran into you!
  -> Chat1
* Hello Mrs. Lee! I'm doing well now that I ran into you!
  -> Chat1

==Chat1==

Mrslee?Smiling "Me? Oh! That's very nice of you to say." 

* Well, it's true. You're always trying to keep fit and engaged. It's really great to talk with you. 
  -> Chat2
* Well, it's true. You're always trying to keep fit and engaged...in fact maybe you could help me with something?
  -> Explain1

==Chat2==
Mrslee?Smiling "Oh, {player_name} that's so kind of you to say. My aerobics classes make me feel energized. They're really good for you! You should try them." 

* Well, I actually want to ask some questions about your classes.
  -> Explain1
* That's actually, great to hear. I actually am looking for some information about classes.
  -> Explain1


==Explain1==

Mrslee?Smiling "Really? I really enjoy these classes, so I'd be happy to help you. What do you need to know?" 
* Mr. Calindas' mother is moving to Bloomwood, and she needs great activities.
  -> Explain2
* Mr. Calindas' mother is moving here, and I think this might be a fun activity for her.
  -> Explain2

==Explain2==
Mrslee?Smiling "She's moving here? To live with Giancarlo? That's nice. Aerobic activities are very good for the mind and body." 

* Are they? Can you tell me more about that?
  -> Suggestion1
* Can you tell me more about the benefits of exercise for seniors?
  -> Suggestion2

==Suggestion1==
Mrslee?Smiling "Well, you should talk to a doctor before you start a physical activity. She should know that. You can also just sign u on line or at the Community Center front desk." 

~ notification = "Mrslee_Day 2_Talk to a doctor before you start a physical routine"
# notification
~ notification = "Mrslee_Day 2_You can sign up for classes online or in person."
# notification

* {not Suggestion2} That sounds great, do you anything else about the health or social benefits?
  -> Suggestion2
* This is perfect information Mrs. Lee. Thank you so much for your time!
  -> Goodbye

==Suggestion2==
Mrslee?Smiling "Oh, yes! For seniors, group exercise is very social. I have a lot of friends in my classes."
Mrslee?Smiling "I can stay active and fit, which let's me be independent. It helps me feel strong and keeps my balance up. I love it!"

~ notification = "Mrslee_Day 2_Exercise Improves Social Wellness_Mrcalindas2"
# notification
~ notification = "Mrslee_Day 2_Seniors can stay active using aerobic classes_Mrcalindas2"
# notification
~ notification = "Mrslee_Day 2_Staying active can improve your strength and balance_Mrcalindas2"
# notification

* {not Suggestion1} That sounds amazing! Is there anything else, I should know?
  -> Suggestion1
* This is perfect information Mrs. Lee. Thank you so much for your time!
  -> Goodbye

==Goodbye==
Mrslee?Smiling "Thank you for asking me, {player_name}. Let me know when she gets here. I would love to meet her. I'm going to go get ready to volunteer today. See you soon!" 

* Goodbye, Mrs. Lee. Have a wonderful day!
  ->END
* Goodbye, Mrs. lee, have a great time with Lila and the kiddos today!
  ->END
