VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Rashad"
# new_contact

Rashad?Smiling "Hey, hey {player_name}! Glad to see you. The next book in that N.K Jemisen series is ready for you. We just got new copies in." 

* Hey Rashad! That's great, I was waiting on it.
  -> Chat1
* Really? I've been stoked for it, thanks for letting me know it's in.
  -> Chat1

==Chat1==

Rashad?Smiling "I got us a grant to add more Black and Latine authors to our shelves, so if you have recommendations, I'm here for them."

* I do have some recommendations. Congrats on the grant, that's really exciting.
  -> Chat2
* I can totally pass those on later. I have a quick question for you, though.
  -> Explain1

==Chat2==

Rashad?Smiling "It is isn't it? I've been trying to make sure we spend money on what the community wants, rather than random stuff the board wants to buy, like...diffusers."
Rashad?Smiling "You know we don't need diuffusers in a library." 

* No one needs those in here. That reminds me, I could use your help.
  -> Explain1
* I love a diffuser, but maybe not here. Oh hey, I have a question for you.
  -> Explain1

==Explain1==
Rashad?Neutral "Oh yeah? What's up?"

* Mr Calindas is running the health booth, and he wants your opinion on something.
  -> Explain2
* We're having a health booth at the block party, and I could use your opinion on something.
  -> Explain2

==Explain2==

Rashad?Neutral "Oh? My Opinion? What do you need to know?"

* What community health issues or programs would you want to know more about?
  -> Suggestion1
* What does the community need to know about health?
  -> Suggestion2

==Suggestion1==
Rashad?Smiling "Well, honestly Covid taught us that we need to teach people basic hygiene. At the library, we want people to wash their hands often."
Rashad?Smiling "We also know that materials should be in many different languages, so that ESL speakers can access our materials." 

~ notification = "Rashad_Day 1_Materials need to be in many languages"
# notification Rashad_Day 1_Materials need to be in many languages
~ notification = "Rashad_Day 1_Teaching basic hygiene is crucial"
# notification Rashad_Day 1_Teaching basic hygiene is crucial

* Those are great points. Can you think of anything else?
  -> Suggestion2
* That sounds pretty great. I'll take these suggestions back to the clinic.
  -> Goodbye

==Suggestion2==
Rashad?Smiling "Hmm. Well, having access to free health classes or mental health classes is really useful. I never remember they have those." 

~ notification = "Rashad_Day 1_Free health and mental wellbeing classes are useful_Mrcalindas1"
# notification Rashad_Day 1_Free health and mental wellbeing classes are useful_Mrcalindas1

* Okay, that sounds good. Can you think of anything else?
  -> Suggestion1
* That sounds pretty great. I'll take this back to the clinic
  -> Goodbye

==Goodbye==

Rashad?Smiling "Oh, well that's good. Thanks for asking my thoughts. Okay, I'm going to go to my next meeting I'll catch you around {player_name}! Take care." 

* Take care, Rashad!
  ->END
* I'll send you those book recommendations, okay? Take care!
  ->END