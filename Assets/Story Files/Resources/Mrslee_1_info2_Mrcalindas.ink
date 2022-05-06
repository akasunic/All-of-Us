VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "{player_name}, what's goin' on?"

+ Hey, not too much. How 'bout you?
  -> Chat1
+ I can't complain when it's this nice out!
  -> Chat1

==Chat1==
Mrcalindas?Neutral "This weather is beautiful. I think I just decided to take a little walk on my break. Dr. Lee and I would do lunch on days like this!"

+ I love it! a nice-weather lunch buddy!  
  -> Chat2
+ That's nice! Hey, do you have time for advice on high blood pressure?
  -> Explain1

==Chat2==
Mrcalindas?Smiling "I miss him most on days like this! He used to love good weather."
Mrcalindas?Smiling "We would get lunch together on bright days. Sunshine brought out the best in both of us!"

+ Neat! I didn't know you were close with Dr. Lee.
  -> Chat3
+ I'm sorry I didn't get to know Dr. Lee.
  -> Explain1

==Chat3==
Mrcalindas?Neutral "Yes it's just so tragic that he passed. Heart attacks are no joke."

+ I didn't know he suffered a heart attack.
  -> Explain1
+ My heart goes out to Mrs. Lee and Eddie.
  -> Explain1

==Explain1==
Mrcalindas?Neutral "Yeah, <a>high blood pressure</a>, y'know. It can contribute to a fatal <a>heart attack<a> if you don't keep it in check."
Mrcalindas?Neutral "With the right medications, lifestyle changes, and <a>at-home monitoring machines</a>, you really can improve your outcome."


+ What resources exist for learning more? 
  -> Explain2
+ Am I keeping you from other things?
  -> Explain2

==Explain2==
~ notification = "Mrcalindas_Day 1_Mrs. Lee can use Google to find a reliable resource to provide information about Eddie’s medication_Mrslee1-4"
# notification Mrcalindas_Day 1_Mrs. Lee can use Google to find a reliable resource to provide information about Eddie’s medication_Mrslee1-4

Mrcalindas?Smiling "Actually, I got a minute. Let me show you a couple of things."
Mrcalindas?Neutral "Some people just start with a visit to <a>Google</a>. They enter the drug name, and find some information that way. That's a good start, but we have better options." 

+ How does someone know the site is accurate?
-> Explain3

==Explain3==

~ notification = "Mrcalindas_Day 1_Mrs. Lee can learn to use a secure online portal to look up drug information from a safe resource_Mrslee1-3"
# notification Mrcalindas_Day 1_Mrs. Lee can learn to use a secure online portal to look up drug information from a safe resource_Mrslee1-3

Mrcalindas?Smiling "Great question. Lucky for us, there are several secure online resources that have been created just for this purpose."
Mrcalindas?Smiling "Look at this one - it's a <a>drug information portal</a>, where you can look up medications. They work with doctors to make sure the information is useful and accurate."
Mrcalindas?Smiling "And this one is a site for reading up on different health conditions - like high blood pressure. You can access them from here, or your home computer."
Mrcalindas?Smiling "Rashad regularly helps patients from the Clinic access these resources at the Library."

+ Thank you so much for this information!
  -> Goodbye
+ I will definitely have to check this out for myself
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "No problem, {player_name}, I will see you around!"

+ Enjoy the weather, Mr. Calindas
  ->END
+ See ya!
  ->END