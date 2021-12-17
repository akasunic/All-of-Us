VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
~ new_contact = "Mrcalindas"
# new_contact

Mrcalindas?Smiling "{player_name}, what's goin' on?"

* Hey, not too much. How 'bout you?
  -> Chat1
* Beautiful weather in Bloomwood today, right? I can't complain about it!
  -> Chat1

==Chat1==
Mrcalindas?Neutral "This weather is BEAUTIFUL. I think I just decided to take a little walk on my break."

* Do you remember Dr. Lee? I was just visiting with Mrs. Lee.
  -> Chat2
* That sounds really nice! Hey, do you have time and space right now to give some advice on high blood pressure
  -> Explain1

==Chat2==
Mrcalindas?Smiling "Now that you mention Dr. Lee, I do recall he used to love this weather."
Mrcalindas?Smiling "We would sometimes get lunch together, but only when the sun was high in the sky like this. The sun brought that man to life like nothing else."

* Neat! I didn't know you were close with Dr. Lee.
  -> Chat3
* That is a really nice memory you have of Dr. Lee.
  -> Explain1

==Chat3==
Mrcalindas?Neutral "Yes it's just so tragic that he passed. Heart attacks are no joke."

* Do you know what caused Dr. Lee's heart attack?
  -> Explain1
* My heart goes out to Mrs. Lee
  -> Explain1

==Explain1==
~ notification = "Mrcalindas_Day 1_At-home monitoring machines can be used for monitoring blood pressure"
# notification Mrcalindas_Day 1_At-home monitoring machines can be used for monitoring blood pressure
~ notification = "Mrcalindas_Day 1_High blood pressure can lead to heart attacks"
# notification Mrcalindas_Day 1_High blood pressure can lead to heart attacks

Mrcalindas?Neutral "Yeah, high blood pressure, y'know, it can contribute to a fatal heart attack if you don't keep it in check."
Mrcalindas?Neutral "With the right medications, lifestyle changes, and at-home monitoring machines, you really can improve your outcome. I wish he'd done more to understand his condition. I'm sure Mrs. Lee feels the same."

* How can I learn more about this?
  -> Explain2
* Thank you so much for giving me your time, Mr. Calindas
  -> Explain2

==Explain2==
~ notification = "Mrcalindas_Day 1_Drug information portal can be used to look up medications_Mrslee1"
# notification Mrcalindas_Day 1_Drug information portal can be used to look up medications_Mrslee1

Mrcalindas?Smiling "Actually, I got a minute. We have several secure online resources. Look at this one - it's a drug information portal, where you can look up medications."
Mrcalindas?Smiling "And this one is a site for reading up on different health conditions - like high blood pressure. You can access them from here, or your home computer."

* Thank you so much for this information!
  -> Goodbye
* I will definitely have to check this out for myself
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "No problem, {player_name}, I will see you around!"

* Enjoy the weather, Mr. Calindas
  ->END
* See ya!
  ->END
