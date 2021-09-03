VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro== 

Rashad?Neutral "Hey {player_name} what's up? How are you feeling?" 

* Hey Rashad! I'm doing well, I'm thinking a lot about the Block Party. What are you up to?
  -> Chat1
* I'm alright. This Block Party is really on my mind. What are you up to?
  -> Chat1

==Chat1==

Rashad?Smiling "Actually I like playing a little pick-up basketball on my lunch break. My doctor suggested I try it. You look a little stressed. What's going on?" 

* I'm worried the Block Party isn't that inclusive.
  -> Chat2
* Actually, maybe you can help me out.
  -> Explain1

==Chat2==

Rashad?Neutral "Really? What makes you say that?" 

* Well, I could use some help figuring out how to support children with sensory issues.
  -> Explain1
* Actually, maybe you can help me out, I need to make sure children with sensory issues feel comfortable at the Block Party.
  -> Explain1

==Explain1==

Rashad?Neutral "I'm actually really happy you're thinking about this. A lot of children can have a rough time without proper support. We see it at the library all the time. Can you tell me some more?"

* Sure, there's a child who is really excited to come, but I want to make sure I can support them if it's too overwhelming.
  -> Explain2
* Of course. I want to make sure I have activities to support children and their families who may have sensory issues.
  -> Explain2

==Explain2==

Rashad?Neutral "Well, this is something I have to think about at the library all the time. Some families can feel embarrassed about their children, which is rough."
Rashad?Neutral "Children with sensory issues can have a great time doing normal social activities if we set them up for success." 

* What can I do?
  -> Suggestion1
* What do you think I should do to support these children and their families?.
  -> Suggestion2

==Suggestion1==

~ notification = "Rashad_Day 4_Put up visual signs that explain activities"
# notification Rashad_Day 4_Put up visual signs that explain activities

Rashad?Smiling "Well, one thing you can do is make sure that all the activities are labeled so that each family knows what to do in each area. That way you can set up expectations."

* That's a great idea. I think a bit more, though. Do you have any other suggestions?
  -> Suggestion2
* That sounds like a great idea. I'll keep it in mind. Thanks!
  -> Goodbye

==Suggestion2==

~ notification = "Rashad_Day 4_Providing a list or a map of activities helps children know what to expect_Mrcalindas4"
# notification Rashad_Day 4_Providing a list or a map of activities helps children know what to expect_Mrcalindas4
~ notification = "Rashad_Day 4_A separate quiet and calm space can help children who need a sensory break_Mrcalindas4"
# notification Rashad_Day 4_A separate quiet and calm space can help children who need a sensory break_Mrcalindas4

Rashad?Smiling "Well, one way to really support families and children is to make sure there's a quiet space to go. If a kid needs a break from all that running around, it can be nice to just chill."
Rashad?Smiling "I also like to give parents a hand out of all the activities or some sort of map, for the kids to see. That way families and children can decide what they want to do and prepare."

* Wow, I can definitely get that done for the weekend. Do you have any other tips?
  -> Suggestion1
* Thank you so much Rashad. I really appreciate you helping me think about this.
  -> Goodbye

==Goodbye==

Rashad?Smiling "No problem, {player_name}. You know making an inclusive space for children and their families is something we should all do."
Rashad?Smiling "Families need this support, and it's not that hard to give it to them. I'm going to get back in the game, catch you later!" 

* Take care, Rashad!
  ->END
* Catch you later, man! Thanks for the help!
  ->END
