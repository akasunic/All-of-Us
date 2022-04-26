VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila2.txt"
# new_quest
~ new_contact = "Lila"
# new_contact

Lila?Smiling "Oh, hey {player_name}!"
* Hi Lila! How was your event?
-> Chat1
* You survived! I heard you did a great job.
-> Chat1

== Chat1 ==

Lila?Smiling "It went really well! I was nervous, but thanks to Elisa’s fliers and Rashad’s help, we had a really nice turnout,"
Lila?Smiling "We got a lot of sign-ups for the mentorship group. I’m hoping to host a potluck picnic for everyone while the weather is nice."
* I’m so glad to hear that- I knew you could do it!
-> QuestIntro
* That’s awesome! How is Trisha?
-> Chat2

== Chat2 ==
Lila?Smiling "Trisha is doing well. Right now, she’s at the park with our dog, Charlie. He’s still pretty young so we’re still trying to teach him manners. I just couldn’t make it today.
* Oh no, did something happen?
-> QuestIntro
* Is everything okay?
-> QuestIntro

== QuestIntro ==
Lila?Neutral "Well…"
Lila?Neutral "I’ve been having a lot of stiffness in my joints lately so it’s been hard being active. I went with them to the park the other day, but I was really out of breath. 
Lila?Neutral "When I went to the clinic to get a check up, they were concerned because it hasn't gone away."
Lila?Neutral "They recommended I get a few blood tests done, but I’m feeling a little nervous about going back."
* My doctor has recommended the same for me. It’s definitely worth it.
-> QuestOverview
* Needles can be a bit scary, but it’s good to get an idea of what’s going on.
-> QuestOverview

== QuestOverview ==
Lila?Neutral "I agree. At least, in theory, I agree. One of my friends in college found out she had breast cancer when she found a lump one day, and she went right in for testing." 
Lila?Neutral "Apparently Black women have a higher chance of developing breast cancer and some autoimmune diseases."
Lila?Neutral "While a blood test won’t tell me everything, I know there are a lot of things it can rule out." 
Lila?Neutral. "I’m really worried about other health conditions I may be at risk for, especially as a Black woman."
* I understand, that’s a really difficult spot to be in.
-> QuestDetails1
* Have you spoken to some of your friends or Trisha about this? Maybe hearing others' experiences will help ease your worries."
Lila?Neutral "Not really. "
-> QuestAcceptance

==QuestDetails1==
Lila?Neutral "I want to know, but I’m scared to find out. Going to the doctor is a little nerve wracking for me because of how the health system treats people of color."
Lila?Neutral "Trisha is a great support for me especially because we face a lot of the same systemic issues, but since she’s South-Asian, we still have different experiences."
Lila?Neutral "She doesn’t know a lot about Black women’s specific health issues. It makes going to the doctor sort of scary for me and I tend to freeze up."

* I’m sorry finding information about your own health is so hard. 
->  QuestDetails2
* If it would help, I could ask folks about their experiences for you.
-> QuestAcceptance

==QuestDetails2==
Lila?Neutral "I talk to Trisha about these things and she offers to come with me, but I don’t want to take her away from her work."
Lila?Neutral "It feels like a waste of her time if I freeze, or get fed up and walk out early."
Lila?Neutral "With work, it’s hard to schedule these appointments and since I always feel so awkward, I haven’t gone to the clinic as much as I maybe should."
* I know how hard it is to make time. If you want, I can try to help.
-> QuestAcceptance
* Has going to the doctor always been scary for you?
-> QuestDetails3

==QuestDetails3==
Lila?Neutral "Yeah, a little bit."
Lila?Neutral "When I was younger, I would go with my mom to her doctor’s appointments."
Lila?Neutral "I remember those long sign-in sheets with lots of questions about your family history."
Lila?Neutral "My mom was open about everything and would have answered any question I had. I guess since she retired and moved, I've just been avoiding the whole thing."
Lila?Neutral "Having that conversation is pretty daunting for me now."
* I can do some legwork and ask others about this if you’d like."
-> QuestAcceptance
* It’s okay to be nervous. Do you want me to try and look into some of this for you? 
-> QuestAcceptance


==QuestAcceptance==
Lila?Smiling "Really? That would be so helpful."
Lila?Smiling "I know my health should be a priority. It's just that I've been avoiding it for so long that I don't know how to start."
* I completely understand. I’ll let you know as soon as I find something out.
-> Goodbye
* I’m happy to help!
-> Goodbye

==Goodbye==
Lila?Smiling "Thank you {player_name}!"
* No problem!
-> END
* I’m happy to help!
-> END

