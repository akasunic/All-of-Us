VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "Just can't get enough of this place, can you, {player_name}? It feels like I just saw you yesterday!"

* Is twice in one week too much? I don't want to be a bother!
  -> Chat1
* Hahaha, should I leave?!
  -> Chat1

==Chat1==
Mrcalindas?Smiling "No, no.  You know you can stop by here anytime. Emergency or not. One of our roles is to provide information to our community"
Mrcalindas?Smiling "Before you leave, check out our wall of pamphlets. You might find something useful for yourself or someone else!."
Mrcalindas?Smiling "They cover all different types of health conditions and are written to answer basic questions."

* Thanks! I like knowing that's an option. The Health Clinic is 24 hours, right?
  -> Chat2
* You're such a helper, Mr. Calindas. I like that about you! 
  -> Explain1

==Chat2==
Mrcalindas?Smiling "Yup, our doors are open around the clock, 7 days a week. We provide <a>urgent care</a> support, so people can avoid the <a>emergency department</a>."

* So the Health Clinic offers options other than going to the emergency room?
  -> Explain2
* I love walking through those doors. I always feel welcome and supported.
  -> Explain1

==Explain1==
Mrcalindas?Smiling "I'm glad! The more comfortable people feel at the Health Clinic, the sooner they come to us when something goes wrong."
Mrcalindas?Smiling "A lot of people are afraid of going to the doctor, so I try to make the Health Clinic as friendly and helpful as possible."

* Tell me more about making the Health Clinic more friendly?
  -> Explain2
* I feel like being afraid of the doctor would make your job harder!
  -> Explain2

==Explain2==
Mrcalindas?Smiling "It's all about making things easier and less stressful. We've made a lot of changes recently, like adding new online tools and resources."
Mrcalindas?Smiling "I like having new ways to help take care of people, but getting it all set up was a real headache."

* Speaking of headaches, when do headaches become something to worry about?
  -> Chat3

==Chat3==
Mrcalindas?Smiling "Ah, are you getting headaches regularly? You should make an appointment with the doc to check it out."
Mrcalindas?Smiling "It's probably nothing but we want to keep an eye on symptoms. Early diagnosis can improve outcomes for some conditions."
Mrcalindas?Smiling "Headaches - whether they're migraines or something else - can be warning signs and we want to keep an eye on them."

* My friend might be one of those patients who avoids going to the doctor.
  -> Suggestion1
  
==Suggestion1==
~ notification = "Mrcalindas_Day 2_Mrs. Lee should make an appointment to meet a new primary care doctor and ask the new doctor about her headaches_Mrslee2-3"
# notification Mrcalindas_Day 2_Mrs. Lee should make an appointment to meet a new primary care doctor and ask the new doctor about her headaches_Mrslee2-3

Mrcalindas?Neutral "It's not uncommon for people to feel uncomfortable going to the doctor. Maybe their parents didn't have the habit or maybe something happened that makes it uncomfortable." 
Mrcalindas?Smiling "Trust me, I get it. Who wants to get poked and prodded and told to eat fewer sweets?"
Mrcalindas?Neutral "Having a primary care doctor helps a lot; forming a trusting relationship can make it easier to ask important questions." 
Mrcalindas?Neutral "We have several caring doctors. I bet your friend can find someone here they'd find comforting."

* What if I can't convince her to find a primary care doctor?
->Suggestion2
* That's a great idea. What if the headaches get worse before then? 
->Suggestion2

==Suggestion2==
~ notification = "Mrcalindas_Day 2_Mrs. Lee could go to Urgent Care to see someone about her headaches_Mrslee2-4"
# notification Mrcalindas_Day 2_Mrs. Lee could go to Urgent Care to see someone about her headaches_Mrslee2-4

Mrcalindas?Neutral "Sometimes, people end up in the Emergency Room, or coming into Urgent Care at the Health Clinic because their symptoms get so bad they can't be managed at home."
Mrcalindas?Neutral "I think it ends up being more stressful. The patient doesn't get a chance to build a relationship with the doctor quite the same way." 
Mrcalindas?Neutral "I really recommend encouraging your friend to make an appointment before it gets to that point."

* Yeah, I will definitely do that.
  -> Goodbye
* I'll pass it on! Thank you, Mr. Calindas! 
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Okay I gotta get back to work!"

* Good chattin'!
  ->END
