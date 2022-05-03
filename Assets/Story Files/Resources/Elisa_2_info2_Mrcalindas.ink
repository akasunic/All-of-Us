VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Ah, {player_name}! I was just talking about you. How are you?"

* Uh oh. I wasn't worried, but now I am.
  -> Chat1
* I'm great! Knowing I was on your mind? Means I'm doing something right!
  -> Chat1

==Chat1==

Mrcalindas?Smiling "You see, a colleague was telling me how much he worries that his kids hate to cook. I was explaining to them that if you can learn, they can learn." 

* I... well, thanks? I think? 
  -> Chat2
* I have the best teacher, Mr. Calindas. Say, can I ask for advice about medical records?
  -> Explain1

==Chat2==

Mrcalindas?Smiling "Oh. I didn't mean that as a bad thing. Just you didn't know a cucumber from a zucchini. And you took to the kitchen with only a small crash."

Mrcalindas?Smiling "At least while they're at school and have access to the dining hall, his kids won't get scurvy. I hope."

Mrcalindas?Smiling "I reassured him that it's normal for kids to have different interests, and I'm happy to help when someone decides to explore cooking or running."

* I still can't tell a squash from a gourd, Mr. Calindas.
  -> Chat3
* Helping with college paperwork is why I'm here. Can we talk medical records?
  -> Explain1

==Chat3==

Mrcalindas?Smiling "Next time I make roasted winter squash, you can come to the store with me and I'll even show you what the different types look like. You know, they're all delicious roasted."

Mrcalindas?Smiling "I suspect that isn't why you're here, though."

* My friend lost her immunization records- I'm trying to help her figure out how to get another copy.
  -> Explain1


==Explain1==

Mrcalindas?Neutral "If you are a patient at the clinic, all of your medical records - including immunizations - are kept in the patient portal. Visit the website to create an account."

Mrcalindas?Neutral "With your name, date of birth, and either a social security number, or a patient ID number, you can securely access everything we have on file about you." 

Mrcalindas?Neutral "Is that helpful?"

* It is! But what if you have moved or changed doctors?
 -> Explain2
* Yes! But what if what you need isn't in there?
  -> Suggestion1

==Explain2==

Mrcalindas?Neutral "Good catch. That would depend on her prior care provider, some offer their own portals."

Mrcalindas?Smiling "If not, though, she could call her old physician and ask for a physical copy to be mailed. Her parents should know who her pediatrician was."

Mrcalindas?Neutral "Sometimes replacing lost records requires a little detective work.

* Now I'm a little worried about where all my records are!
  -> Suggestion1
* Like if you don't know your whole medical history, you mean?
  -> Suggestion1

==Suggestion1==

~ notification = "Mrcalindas_Day 2_Some jobs might require specific immunizations for your safety_Elisa2-3"
# notification Mrcalindas_Day 2_Some jobs might require specific immunizations for your safety_Elisa2-3


Mrcalindas?Neutral "There are many reasons medical records get lost. Immigration, adoption or foster care. Doctors' practices close. House fires, even."

Mrcalindas?Smiling "I always recommend that people do their best to keep records in a safe place, but when that doesn't work, we improvise. Or we do the best we can without those records."

Mrcalindas?Neutral "Vaccination records are important for a variety of reasons. Some jobs require certain immunizations for your own safety. It's not just schools."


* So if you've lost your records, does that mean you can't work those jobs?
  -> Suggestion2


==Suggestion2==

~ notification = "Mrcalindas_Day 2_If your immunization records are lost, you might need to repeat vaccines. There are also blood tests that can confirm immunity to certain diseases_Elisa2-4"
# notification Mrcalindas_Day 2_If your immunization records are lost, you might need to repeat vaccines. There are also blood tests that can confirm immunity to certain diseases_Elisa2-4 


Mrcalindas?Smiling "Not at all. There are two options for recreating lost immuniation records - a blood test to check for immunity, or just getting the vaccine again." 

Mrcalindas?Neutral "Depending on her insurance, it might be less expensive just to repeat the vaccine. There's very little risk involved - a few side effects, like feeling run down for a day or maybe a little fever." 

Mrcalindas?Smiling "The clinic offers access to reduced price vaccines; once she knows which ones she needs, we can figure out what's covered by insurance."

Mrcalindas?Smiling "She could also try a pharmacy for vaccines she needs to pay for out of pocket." 

Mrcalindas?Smiling "I would recommend researching first, but in general, getting a vaccine from a pharmacist can be an affordable option."


* This has been really helpful, thank you Mr. Calindas!
  -> Goodbye

==Goodbye==

Mrcalindas?Smiling "No problem. Have a good day, {player_name}."

* You too!
  ->END
* See you later!
  ->END
