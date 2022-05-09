VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Lila?Smiling "Hey {player_name}! It's good to see you" 

* Lila! Great timing! Are you going over to the library?
  -> Chat1
* Hey Lila! Want me to take those books to the library for you?
  -> Chat1

==Chat1==
Lila?Smiling "Ooo. Nah - I just checked out these new picture books for my class. I'm really excited to share them with the kids." 

* Sweet! I need to return some cookbooks. I made some great chili yesterday.
  -> Chat2
* I bet the kids really appreciate that! Hey, can I ask you a quick question?
  -> Explain1

==Chat2==
Lila?Smiling "Chili, eh? I have a great recipe for <a>vegan</a> chili if you ever want to try it. It's so easy, the kids in my class make it with me."

* I may have to take you up on that. Hey, can I ask a question?
  -> Explain1


==Explain1==
Lila?Neutral "Sure, {player_name}. What's going on?" 

* You helped Mrs. Lee get her volunteer position, right?
  -> Explain2
* I'm curious about volunteer opportunities at the Community Center.
  -> Explain2

==Explain2==
Lila?Neutral "I recommended that we create a volunteer position just for Mrs. Lee. She's really wonderful with the children, and they love her." 

Lila?Smiling "I don't know which one of us is getting the most benefit; I love having her help!"

* Could you tell me more about the benefits of seniors volunteering?
  -> Suggestion1


==Suggestion1==

~ notification = "Lila_Day 2_Some seniors benefit from caring for a pet_Mrcalindas2-3"
# notification Lila_Day 2_Some seniors benefit from caring for a pet_Mrcalindas2-3

Lila?Smiling "Oh there's lots of benefits. You know, seniors can suffer from depression like all of us. Volunteering can help decrease depression for some people."

Lila?Smiling "Some people do really well with a pet to care for. Other people prefer activities that get them out of the house."

Lila?Smiling "Not just that, but volunteering can also increase <a>mental cognition</a>. Seniors can keep their minds active and sharp, just like Mrs. Lee!"

* Wow. I think we all wish we were as sharp as Mrs. Lee!
  -> Suggestion2
* This is so good to know. I knew I should chat with you.
   -> Suggestion2

==Suggestion2==

~ notification = "Lila_Day 2_Volunteering can combat isolation and loneliness_Mrcalindas2-4"
# notification Lila_Day 2_Volunteering can combat isolation and loneliness_Mrcalindas2-4 


Lila?Smiling "Well, I mentioned depression; <a>isolation</a> and loneliness are real issues for seniors, especially after losing a <a>spouse</a>. That's one thing volunteering can help with."

Lila?Smiling "One of the things that keeps Mrs. Lee sharp is that she has things to look forward to, and people to do them with. Volunteering is part of that!"

Lila?Smiling "There's so many different volunteering activities available. It just depends on what a person likes, and what makes them feel good." 


*  This is valuable perspective. Thank you, Lila!
  -> Goodbye

==Goodbye==
Lila?Smiling "Well, you know I'm happy to help. If you know any seniors looking for an opportunity, the library and the Community Center are great places to start."
Lila?Smiling "Don't be afraid to spread the word! Catch you soon, {player_name}!"

* Thanks Lila, have an awesome day!
  ->END

