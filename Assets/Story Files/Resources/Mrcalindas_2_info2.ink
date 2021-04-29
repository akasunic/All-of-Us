VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Lila?Smiling "Hey {player_name}! It's great to run into you." 

* Lila! It's great to run into you at the library. I was just dropping off some books.
  -> Chat1
* Hey Lila! It's good to see you. I was just dropping off some books.
  -> Chat1

==Chat1==
Lila?Smiling "Ooo. What did you pick up? I just checked out some new picture books for my class. I'm really excited to read them." 

* That sounds sweet. I'm just returning some cookbooks I took out. I managed to make some great chili yesterday.
  -> Chat2
* Aww that sounds sweet. I just got cookbooks. Hey, can I ask you a quick question?
  -> Explain1

==Chat2==
Lila?Smiling "Chili eh? I have a great recipe for vegan chili if you ever want to try it. It's so easy, the kids in my class make it with me."

* Ooo. I may have to take you up on that. Oh, hey, can I ask you a question?
  -> Explain1
* I would love the recipe! Oh, actually while I have you, can I ask you a question?
  -> Explain1


==Explain1==
Lila?Neutral "Sure, {player_name}. What's going on?" 

* You got Mrs. Lee that volunteer position, right?
  -> Explain2
* Well, I think you got Mrs. lee that volunteer position, and I'm curious.
  -> Explain2

==Explain2==
Lila?Neutral "I did get Mrs. Lee a volunteer position. She's really wonderful with the children, and they love her." 

* That's good to hear. I was wondering if you could tell me more about the benefits of seniors volunteering?
  -> Suggestion1
* That's awesome to hear. Can you tell me more about that?
  -> Suggestion2

==Suggestion1==
Lila?Smiling "Oh there's lots of benefits too. You know, seniors can suffer from depression like all of us. Volunteering decreases depression."
Lila?Smiling "Not just that, but volunteering can also increase mental cognition. Seniors can keep their minds active and sharp, just like Mrs. Lee!"

~ notification = "Lila_Day 2_Volunteering helps mental cognition_Mrcalindas2"
# notification
~ notification = "Lila_Day 2_Volunteering in the community can help seniors' depression_Mrcalindas2"
# notification

* Wow. That sounds great, Lila. Do you have any more tips?
  -> Suggestion2
* This is so good to know. I knew I should have come to you.
  -> Goodbye

==Suggestion2==
Lila?Smiling "Well, you know seniors can suffer depression especially after losing a spouse. So, that a thing."
Lila?Smiling "There's so many different volunteering activities available. It just depends on what they like, and what makes them feel good." 

~ notification = "Lila_Day 2_Seniors can suffer from depression, especially after losing a spouse"
# notification
~ notification = "Lila_Day 2_There are many different types of activities available"
# notification

* Wow. That sounds great, Lila. Do you have any more tips?
  -> Suggestion1
*  This is so good to know. I knew I should have come to you.
  -> Goodbye

==Goodbye==
Lila?Smiling "Well, you know I'm happy to help. If you know any seniors looking for an opportunity the library and the community center are great places to start."
Lila?Smiling "Don't be afraid to spread the word. I'm going to check these out. Catch you soon, {player_name}!"

* Thanks Lila, have an awesome day!
  ->END
* I'll call you later for that chili recipe, okay? Thanks so much Lila! Have an awesome day!
  ->END
