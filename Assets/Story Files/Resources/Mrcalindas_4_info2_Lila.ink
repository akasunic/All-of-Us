VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==

Lila?Smiling "Hey {player_name}! Getting a few more books out? Aren't you at the limit by now?" 

* Hi Lila! I'm definitely over the 10 book limit, but I'm researching activities for kids, so I'm going to ask Rashad for mercy.
  -> Chat1
* You <i>know</i>I'm over the limit. But like you, I'm trying to find some cool things for kids to do.
  -> Chat1

==Chat1==

Lila?Smiling "Oh? I love making up new activities. What are you working on?" 

* Well, specifically, Mr. Calindas asked me about inclusive activities for his granddaughter.
  -> Chat2
* If you've got a minute, I could actually use your help.
-> Explain1

==Chat2==

Lila?Smiling "Well, I'm happy to help if you need it. The students in my class are all different, and have different needs. I could probably help you."

* That's really great to hear, Lila. You're a lifesaver.
  -> Explain1
* Thanks so much, Lila. I realized I don't know that much about how to support kids with sensory needs.
  -> Explain1

==Explain1==

Lila?Smiling "Helping out like this is important in any community. So, I'm totally willing to give you ideas, or advice. What's up?" 

* I'm trying to view Bloomwood from the perspective of a family with a kid who has autism.
  -> Explain2
* Including children in the community is important to me. So when someone asks me about accessible activities, I worry about getting it right!
  -> Explain2

==Explain2==

Lila?Neutral "That's really valid. Children with autism or ADHD can sometimes feel overwhelmed in loud spaces. Adults too. Having some different options that appeal to different needs is key."

* I think so too. What do you suggest?
  -> Suggestion1
* I think so too. Do you have any tips?
  -> Suggestion1

==Suggestion1==

~ notification = "Lila_Day 4_A calm sensory activity can help all children to regulate their emotions_Mrcalindas4-3"
# notification Lila_Day 4_A calm sensory activity can help all children to regulate their emotions_Mrcalindas4-3 


Lila?Smiling "Well, if they're visiting, the Community Center hosts quiet play hours - caretakers can bring children over to play with legos, or participate in low-key guided activities." 

Lila?Smiling "One thing we do is have a smaller sensory activity like making slime in bags. Then the child can take it home and use the sensory engagement of feeling it squish to help regulate their emotions."

Lila?Smiling "I like that it gives me a chance to teach caretakers tricks about how to support the little people in their lives without it feeling like work. Ya know?"

* I never thought about it like that. Do you have any other ideas?
  -> Suggestion2


==Suggestion2==

~ notification = "Lila_Day 4_It's important to understand that different processing styles aren't 'misbehaving'. Including children means including noise and sometimes mess_Mrcalindas4-4"
# notification Lila_Day 4_It's important to understand that different processing styles aren't 'misbehaving'. Including children means including noise and sometimes mess_Mrcalindas4-4 


Lila?Smiling "Well, one thing we do have is a quiet book corner in the children's area. Kids can draw or color and relax in beanbags." 

Lila?Smiling "Also, we can all avoid making children feel bad about themselves for feeling overstimulated. It's not their fault, and they aren't misbehaving. We all process things differently."

Lila?Smiling "Kids are going to be kids. We prepare for the noise and the mess, and make space for them to engage in ways that feel good for them." 

Lila?Smiling "I always have that one kid who would rather rearrange the play food than join the group, and that's okay. If they are content and safe, I assume they're listening and getting something from the activity anyway."

* Oh! It's great you already thought of this. Thanks Lila!
  -> Goodbye

==Goodbye==

Lila?Smiling "This is really my jam {player_name}. Helping all families feel welcome and wanted in Bloomwood is the least we can do, right?"
Lila?Smiling "I love working together to make it happen. I think I'm going to see if I can pick up some new materials for our sensory bags. See you soon, okay?" 

* See you Lila! Thanks so much for always giving me such great ideas.
  ->END
