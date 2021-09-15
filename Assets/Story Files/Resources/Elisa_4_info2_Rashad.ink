VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Rashad?Smiling "Hey there, adventurer! What's new with you?"

* Oh, you know, just running all over town.
  -> Chat1
* Not much, how bout you?
  -> Chat1

==Chat1==

Rashad?Smiling "Yeah, that sounds about right. Is the block party planning going ok?"

* Yeah, it's going pretty well! Things seem to be coming together.
  -> Chat2
* Yeah, all good. Hey, can I actually ask you a health question?
  -> Explain1

==Chat2==

Rashad?Smiling "That's good to hear. Don't stress yourself out about it too much, I'm sure it'll be fantastic."

* Thanks, Rashad. And of course it'll be great, you'll be doing storytime! Right...?
  -> Chat3
* I could use your help.
  -> Explain1

==Chat3==

Rashad?Smiling "Ha, I'm still thinking about it. But anyways, what brings you to my neck of the woods?"

* I need to do some research on diabetes, actually.
  -> Explain1
* You wouldn't happen to know anything about diabetes, would you?
  -> Explain1

==Explain1==

Rashad?Neutral "Well, I know a little. My cousin actually has type 2 diabetes. What do you wanna know?"

* A friend of mine was wondering what it takes to diagnose diabetes, and how it gets treated. They think a relative might have it.
  -> Explain2
* Do you know how testing and treatment for diabetes works at all?
  -> Explain2

==Explain2==

Rashad?Neutral "Hmm... I think he had to go to the doctor and do a blood test, and he got diagnosed that way."
Rashad?Neutral "In terms of treatment, I know he carries a blood glucose meter with him, but I don't know much more than that."

* Did your cousin have to change his lifestyle or anything?
  -> Suggestion1
* Do you know if your cousin has to take any medications?
  -> Suggestion2

==Suggestion1==

~ notification = "Rashad_Day 4_Diet, exercise, and insulin shots can help treat diabetes_Elisa4"
# notification Rashad_Day 4_Diet, exercise, and insulin shots can help treat diabetes_Elisa4

Rashad?Smiling "Yeah, he has to be more careful about what he eats, and make an effort to get out and exercise."
Rashad?Smiling "Oh! You know what, I think he takes insulin shots, too. I remember him mentioning that once."
Rashad?Smiling "I don't think all people with type 2 diabetes have to do that, though. A lot depends on the situation, which is why a doctor is in charge in these situations."

* What is diabetes, anyway? I still don't really understand.
  -> Suggestion2
* Thanks Rashad, I think that'll help my friend a lot!
  -> Goodbye

==Suggestion2==

~ notification = "Rashad_Day 4_Treating diabetes has to do with regulating blood sugar levels_Elisa4"
# notification Rashad_Day 4_Treating diabetes has to do with regulating blood sugar levels_Elisa4

Rashad?Smiling "It has to do with the pancreas, I think. Insulin is stuff in your bloodstream that regulates blood sugar levels- that's how they're actually able to diagnose diabetes."
Rashad?Smiling "If your blood sugar levels are too high, they know your insulin levels are out of balance."
Rashad?Smiling "All the treatment stuff they do - exercise, healthy eating, medication- is to try to get those levels back to normal."

* So, does your cousin have to do anything specific to take care of himself?
  -> Suggestion1
* Awesome, thanks for all your help!
  -> Goodbye

==Goodbye==

Rashad?Smiling "Yeah, no worries! If you think of anything other questions, just let me know. Farewell, adventurer!"

* Farewell to you too!
  ->END
* Alright, alright, bye Rashad.
  ->END