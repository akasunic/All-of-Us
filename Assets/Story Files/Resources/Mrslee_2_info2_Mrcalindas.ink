VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "Just can't get enough of this place, can you, {player_name}? Haha!"

* You know it!
  -> Chat1
* Hahaha, should I leave?!
  -> Chat1

==Chat1==
Mrcalindas?Smiling "I'm just playin'. You know you can stop by here anytime. Emergency or not."

* Thanks! I like knowing that's an option. The clinic is 24 hours, right?
  -> Chat2
* You're a people-person
  -> Explain1

==Chat2==
Mrcalindas?Smiling "Yup, our doors are open around the clock, 7 days a week. I should know--I'm here most every day!"

* You know what? I think you deserve a vacation
  -> Chat3
* I love walking through those doors. I always feel welcome and supported.
  -> Explain1

==Chat3==
Mrcalindas?Smiling "You and me both, {player_name}. But seriously, I love my job here and the people I work with and of course the patients we serve."

* Heck, I'd work for you!
  -> Explain1
* You're beaming just talking about it!
  -> Explain1

==Explain1==
Mrcalindas?Smiling "I'm glad! I feel very grateful for every person who walks in and out of those doors."

* So it's the people for you!
  -> Explain2
* I hear ya, I do.
  -> Explain2

==Explain2==
Mrcalindas?Smiling "It's all about the people. We've made a lot of changes recently, like adding new online tools and resources. I like having new ways to help take care of people, but having it all set up was a real headache."

* Speaking of headaches, are recurrent migraines something to be worried about?
  -> Suggestion1
* My friend is getting actual headaches all the time.
  -> Suggestion2

==Suggestion1==
~ notification = "Mrcalindas_Day 2_Migraine headaches should be checked out by a doctor"
# notification Mrcalindas_Day 2_Migraine headaches should be checked out by a doctor

Mrcalindas?Smiling "Ah, are you getting migraines all the time? You should make an appointment to get the doc to check it out."
Mrcalindas?Smiling "It's probably nothing but we want to keep an eye on symptoms that, y'know, return frequently."

* Actually, I'm asking for a friend.
  -> Suggestion2
* That's exactly what I needed to hear.
  -> Goodbye

==Suggestion2==
~ notification = "Mrcalindas_Day 2_Mrs. Lee should track her headaches before making her appointment_Mrslee2-3"
# notification Mrcalindas_Day 2_Mrs. Lee should track her headaches before making her appointment_Mrslee2-3

Mrcalindas?Smiling "I see. Well tell your friend to make an appointment."
Mrcalindas?Smiling "And it would be really good if they could track their symptoms and how often the headaches are happening, just so the doc can get a complete understanding of their situation."

* Yeah, I will definitely do that.
  -> Goodbye
* I'll consider it!
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Okay I gotta get back to work!"

* Good chattin'!
  ->END
