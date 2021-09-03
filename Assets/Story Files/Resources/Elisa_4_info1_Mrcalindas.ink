VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Hello, {player_name}. How are you today?"

* Hi Mr. Calindas! I'm doing well, how are you?.
  -> Chat1
* So far, so good! How are things with you?
  -> Chat1

==Chat1==

Mrcalindas?Smiling "I'm doing well. What brings you to the health center?"

* Wow, all business with you huh?
  -> Chat2
* I'm looking for information about diabetes.
  -> Explain1

==Chat2==

Mrcalindas?Smiling "Well, I assume you're not just here to chat. But if you are, I apologize. How's the block party going?"

* It's going good! Still a bunch of last-minute things I'm figuring out, though.
  -> Chat3
* I was just messing with you! I'm actually here to try and learn more about diabetes.
  -> Explain1

==Chat3==

Mrcalindas?Smiling "Good luck with all that. I'm sure it'll turn out great."

* Thanks! Anyway, I was wondering if I could ask you some questions about diabetes?
  -> Explain1
* I appreciate it. I'm actually here for my friend, though- she needs some info on diabetes.
  -> Explain1

==Explain1==

Mrcalindas?Neutral "Well, generally, if someone has diabetes, it means their blood sugar levels are too high because their body isn't producing enough insulin."
Mrcalindas?Neutral "Not everyone experiences it in the same way, either. Depending on genetics and age, someone could have Type 2 Diabetes instead of Type 1 Diabetes. Does that help?"

* Sort of- I wanted to know what it's like to diagnose type 2 diabetes for adults, and what treatment looks like.
 -> Explain2
* Yes! So, what should someone do if they think they have type 2 diabetes?
  -> Explain2

==Explain2==

Mrcalindas?Neutral "What'll usually happen is if you tell a doctor you've been experiencing symptoms, they'll do a blood test to check your blood sugar levels."
Mrcalindas?Neutral "From there, there are a couple of different treatments available."

* What are the common treatments?
  -> Suggestion1
* Is it difficult to treat?
  -> Suggestion2

==Suggestion1==

~ notification = "Mrcalindas_Day 4_Healthy diet and exercise helps treat diabetes_Elisa4"
# notification Mrcalindas_Day 4_Healthy diet and exercise helps treat diabetes_Elisa4

Mrcalindas?Smiling "The big ones are a diverse, nutrient-rich diet and regular exercise."
Mrcalindas?Smiling "Eat small portions, make sure you do some light activity every 30 minutes, and do more moderate activity a few times a week."

* But how do you know if your blood sugar is getting better or not?
  -> Suggestion2
* Awesome, thanks Mr. Calindas!
   -> Goodbye

==Suggestion2==

~ notification = "Mrcalindas_Day 4_Monitoring your blood sugar and insulin therapy helps treat diabetes_Elisa4"
# notification Mrcalindas_Day 4_Monitoring your blood sugar and insulin therapy helps treat diabetes_Elisa4

Mrcalindas?Smiling "Well, it's fairly simple. Other than looking after your diet and exercising every day, you'd be monitoring your blood sugar levels at home via a blood glucose meter."
Mrcalindas?Smiling "How often you have to monitor those levels depends person-to-person, but it's usually once a day."
Mrcalindas?Smiling "Otherwise, treatment can include insulin therapy via injections, but doctors don't always prescribe it."

* Wait, diet and exercise? What would that look like?
  -> Suggestion1
* This has been really helpful, thank you Mr. Calindas!
  -> Goodbye

==Goodbye==

Mrcalindas?Smiling "No problem. Have a good day, {player_name}."

* You too!
  ->END
* See you later!
  ->END
