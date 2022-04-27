VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Rashad?Smiling "Hey there, adventurer! What's new with you?"

* Oh, you know, on a quest for knowledge and wisdom!
  -> Chat1
* Not much, how bout you?
  -> Chat1

==Chat1==

Rashad?Smiling "Yeah, that sounds about right. I just dropped a whole new batch of audiobooks into the system, by the way. We added some fresh fantasy titles."

* Ah! Dragons and sorcerors as walking companions! You speak my language, Rashad!
  -> Chat2
* Yeah, all good. Hey, can I actually ask you a health question?
  -> Explain1

==Chat2==

Rashad?Smiling "I still don't understand why you like dragons better than starships, but I will always support your book habit. 

Rashad?Smiling "I also added some print books about planning native and drought-resistant gardens for both Elisa and Mrs. Lee. I can't wait to show them!"

* Whoa. Rashad, you're just paying attention to all the little details!
  -> Chat3
* I could use your help, actually.
  -> Explain1

==Chat3==

Rashad?Smiling "Some days it's the big things, some days it's the little things. Man, there are so many hard parts to this job. Making people smile? That's the catnip I need sometimes."

Rashad?Neutral "But you didn't come in to hear about my restocking habits, though. What can I help with?"

* I need to do some research on diabetes, actually.
  -> Explain1


==Explain1==

Rashad?Smiling "Ah! I know a little bit because my cousin has type 2 diabetes. I have helped him do some research along the way."

Rashad?Smiling "And the library has some books and cookbooks that might be helpful."

Rashad?Neutral "What do you wanna know?"

* What resources does the library have for learning more about diabetes?
  -> Explain2
* Once someone is diagnosed, what tools exist to help them?
  -> Explain2

==Explain2==

Rashad?Smiling "Well, the library hosts health workshops. General workshops, some around nutrition, and some about how to plan meatless meals. We work with the health clinic to get experts in."

Rashad?Smiling "I really do think a little knowledge is the most powerful tool we have, after the magic of modern medicine." 

* OK. Classes with people who know things. What else?
  -> Suggestion1
* Knowledge is power! What other things do you recommend?
  -> Suggestion1

==Suggestion1==

~ notification = "Rashad_Day 1_You can learn more about managing diabetes by accessing library resources, such as health workshops and cookbooks_Elisa1-3"
# notification Rashad_Day 1_You can learn more about managing diabetes by accessing library resources, such as health workshops and cookbooks_Elisa1-3 


Rashad?Smiling "Let's see. We covered classes. The other two things the library can provide are access to online portals and books..."

Rashad?Smiling "...both about the science around diabetes, and about how to meal plan and cook for someone with diabetes."

Rashad?Smiling "We can help them use the internet to find safe and secure resources with reliable information - either in technology class or one-on-one."

Rashad?Smiling "They can look up diabetes or research drugs before they start taking them."

Rashad?Smiling "Our cookbook section is very diverse, and we have several titles about diabetic cooking for different cuisines. Cheryl has checked a few of them out just to see what they had to say."

Rashad?Smiling "She got the recipe for a mean saag paneer from one of them. A lot of diabetic cookbooks try to keep the recipes approachable. No 30 ingredient, 20 step Julia Child fancy weekend cooking." 

* What is diabetes, anyway? I still don't really understand.
  -> Suggestion2
* Can you summarize diabetes for me, so I can describe it to my friend?
  -> Suggestion2


==Suggestion2==

~ notification = "Rashad_Day 1_Treating diabetes has to do with regulating blood sugar levels_Elisa1-4"
# notification Rashad_Day 1_Treating diabetes has to do with regulating blood sugar levels_Elisa1-4

Rashad?Smiling "It has to do with the pancreas. Insulin is stuff in your bloodstream that regulates blood sugar levels- that's how they're actually able to diagnose diabetes."

Rashad?Smiling "If your blood sugar levels are too high, they know your insulin levels are out of balance. So your pancreas needs a support team."

Rashad?Neutral "Uncontrolled blood sugar has all sorts of implications - it affects every system of the body. Skin, eyes, blood vessels. It can be serious."

Rashad?Smiling "All the treatment stuff - exercise, healthy eating, medication- is to try to get those levels back to normal. You team up with your pancreas to keep your body as healthy as possible."


* Awesome, thanks for all your help!
  -> Goodbye

==Goodbye==

Rashad?Smiling "Yeah, no worries! If you think of anything other questions, just let me know. Farewell, adventurer!"

* Farewell to you too!
  ->END
