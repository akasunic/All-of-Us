VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Mrcalindas?Smiling "Oh now, what do you need? Hello, {player_name}."

* Hello, Mr. Calindas! I'm actually here to talk about running.
  -> Chat1
* Hey now! I was actually just coming to ask you about the running club!
  -> Chat1

==Chat1==
Mrcalindas?Smiling "What! You have my undivided attention, now. Finally, I <i>knew</i> you were a runner." 

* Well it's mostly about running...
  -> Chat2
* Well, it's not actually <i>just</i> about running. I could use your help, though.
  -> Explain1

==Chat2==
Mrcalindas?Smiling "Oh? Well, let's start with the running part. When are you coming out?" 

* Well, it's not me. A friend would love more information.
  -> Chat3
* I'm not. It's actually information for a friend. Do you remember when I asked about stress?
  -> Explain1

==Chat3==
Mrcalindas?Smiling "Oh, great! It's a great stress reliever. Tell your friend we meet at 2PM on Saturdays at the Community Center. Is there any other information they'd like?"

* Well, I have a question about teletherapy...
  -> Explain1
* I know running is a great way to lower stress. And therapy. Do you know anything about teletherapy?
  -> Explain1

==Explain1==
Mrcalindas?Neutral "Oh, yes. Teletherapy is great. You can talk to your therapist using a computer or a phone, which is relatively new!" 

* Really? Is it like regular therapy? Is this good for people new to therapy? I have so many questions.
  -> Explain2
* My friend is new to therapy. How would they start the process?
  -> Explain2

==Explain2==
Mrcalindas?Neutral "Teletherapy is just as great as in person. It can be a good way for people new to therapy to dip their toes into it, since over the phone can help people feel more comfortable talking openly. So, you could do that, yes."

* Okay, so what would you tell someone who wants teletherapy?
  -> Suggestion1
* What advice would you give someone, who is doing this for the first time?
  -> Suggestion2

==Suggestion1==
Mrcalindas?Smiling "Tell them it's a great place to start if you are nervous! One thing to be cautious of is to make sure you have a place to attend the session where no one can hear you, so you can speak openly."
Mrcalindas?Smiling "Oh, and therapists can have a sliding scale, so you pay based on your income." 

~ notification = "Mrcalindas_Day 3_Teletherapy is a great option for those with busy schedules_Rashad3"
# notification Mrcalindas_Day 3_Teletherapy is a great option for those with busy schedules_Rashad3
~ notification = "Mrcalindas_Day 3_Therapists can have a sliding scale. You pay based on your income_Rashad3"
# notification Mrcalindas_Day 3_Therapists can have a sliding scale. You pay based on your income_Rashad3
~ notification = "Mrcalindas_Day 3_You should like your therapist"
# notification Mrcalindas_Day 3_You should like your therapist

* {not Suggestion2} Hmm, can you tell me more?
  -> Suggestion2
* This is great! I really appreciate all this advice.
  -> Goodbye

==Suggestion2==
Mrcalindas?Smiling "Teletherapy is great for flexible schedules. You can email the office to set up an intake appointment."
Mrcalindas?Smiling "In intake, you get to know each other, and discuss your expectations for each other such as attendance and weekly action items. If you like the therapist, you can set up weekly video calls. You can talk to your therapist about anything." 

~ notification = "Mrcalindas_Day 3_You can talk to your therapist about anything"
# notification Mrcalindas_Day 3_You can talk to your therapist about anything
~ notification = "Mrcalindas_Day 3_You can email the office to set up an intake appointment_Rashad3"
# notification Mrcalindas_Day 3_You can email the office to set up an intake appointment_Rashad3

* {not Suggestion1} This is so good to know.
  -> Suggestion1
* Thank you so much Mr. Calindas. Once again, you've been a huge help.
  -> Goodbye

==Goodbye==
Mrcalindas?Neutral "Okay, {player_name}, I have to head back to get some things ready for the block party with the other nurses who are volunteering. We're giving out goodie bags. See you soon!"

* No, really. You've been such a huge, help. See you soon, Mr. Calindas.
  ->END
* Well, I won't stop you. Thank you so much, Mr. Calindas. See you soon!
  ->END
