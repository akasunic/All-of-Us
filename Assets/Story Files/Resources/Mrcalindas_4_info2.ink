VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==

Lila?Smiling "Hey {player_name}! Getting a few more books out? Aren't you at the limit by now?" 

* Hi Lila! I'm definitely over the 25 book limit, but I'm looking for some activities, so
  -> Chat1
* Now you know, I'm over the limit. But like you, I'm trying to find some cool things for kids.
  -> Chat1

==Chat1==

Lila?Smiling "Oh? I love making up new activities. Is this for the Block Party? The Child care area is going to be great, I think." 

* It is for the Block Party. I'm trying to make sure it's inclusive for everyone, so I'm looking for some ideas.
  -> Chat2
* If you've got a minute, I could actually use your help.-> Explain1

==Chat2==

Lila?Smiling "Well, I'm happy to help if you need it. The students in my class are all different, and have different needs. I could probably help you."

* That's really great to hear, Lila. You're a lifesaver.
  -> Explain1
* Thanks so much, Lila. I just want to make this the best time for all the families, you know?
  -> Explain1

==Explain1==

Lila?Smiling "Helping out like this is important in any community. So, I'm totally willing to give you ideas, or advice. What's up?" 

* I want to make sure the Block Party is still fun for children with sensory processing issues.
  -> Explain2
* Some children get overwhelmed with loud places. So I want to make sure the Block Party is still fun.
  -> Explain2

==Explain2==

Lila?Neutral "That's really valid. Children with autism or ADHD can sometimes feel overwhelmed in loud spaces like the Block Party."
Lila?Neutral "Adults too. Having some different options could help everyone have a good time."

* I think so too. Do you know what some good activities for children and families with this issues might be?
  -> Suggestion1
* I think so too. Do you have any tips?.
  -> Suggestion2

==Suggestion1==
Lila?Smiling "Creating smaller quieter activities can really help."
Lila?Smiling "One thing we can do is have a smaller sensory activity like making slime in bags so that children can take a break from the bounce house."
Lila?Smiling "Also, we can all avoid making children feel bad about themselves for feeling overstimulated. It's not their fault, and they aren't misbehaving. We all process things differently."

~ notification = "Lila_Day 4_A calm sensory activity can help all children to regulate their emotions_Mrcalindas4"
# notification
~ notification = "Lila_Day 4_Avoid judging or blaming the child for feeling overstimulated_Mrcalindas4"
# notification

* I never thought about it like that. Do you have any other ideas?
  -> Suggestion2
* Wow, Lila you always know just how to handle things like this. Thank you!
  -> Goodbye

==Suggestion2==
Lila?Smiling "Well, one thing we do have is a quiet book corner in the children's area. Kids can draw or color and relax in beanbags." 

~ notification = "Lila_Day 4_There's a quiet corner in the children's area"
# notification

* Hmm. That sounds like a great start. Is there anything else you can think of doing?
  -> Suggestion1
* Oh! It's great you already thought of this. Thanks Lila!
  -> Goodbye

==Goodbye==

Lila?Smiling "This is really my jam {player_name}. Helping all families feel welcome and wanted in Bloomwood is the least we can do, right?"
Lila?Smiling "I love working together to make it happen. I think I'm going to see if I can pick up some materials for our sensory bags. See you soon, okay?" 

* Thanks you for your insight, Lila. You're a life-saver, see you.
  ->END
* See you Lila! Thanks so much for always giving me such great ideas.
  ->END
