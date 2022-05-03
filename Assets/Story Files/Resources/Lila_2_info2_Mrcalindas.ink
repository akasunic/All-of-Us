VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Ah,  {player_name}. So good to see you - how are things?"
* Hi Mr.Calindas! I’m hanging in there. What about you?
-> Chat1
* Busy as a bee, but happier for it! How are things going for you?
-> Chat1

==Chat1==
Mrcalindas?Smiling "I’m glad to hear you’re well! I'm writing out the grocery list for Brooklyn's birthday."

Mrcalindas?Smiling "I want to bake my eldest grandkid a strawberry cake and cook her favorite dinner to celebrate the occasion."

* She’s growing up so fast! You're such a fun grandpa!
-> Chat2 
* I love it! Do you have time for a question?
-> Explain1

==Chat2==
Mrcalindas?Smiling "You’re too kind. When my daughter, Jessica, was growing up, we would bake special cakes for every birthday and she got to request her favorite dinner."
Mrcalindas?Smiling "I’ll have to share my strawberry cake recipe with you sometime - They were such a hit! I even made them for Lila and Eddie."
Mrcalindas?Smiling "Another item for our cooking lessons when we get a chance."

* I’ll never say no to more dessert, Mr.Calindas. 
-> Chat3
* Absolutely -- Hey can I ask you something?"
-> Explain1

==Chat3==
Mrcalindas?Smiling "Haha, me neither! It’s important to eat your fruits and vegetables, but sweet things in moderation never hurt."
Mrcalindas?Smiling "Exciting as cake is, there’s probably something else you wanted to bring up, yeah?"
* A friend has been anxious about going to the doctor as a Black woman.
-> Explain1

==Explain1==
Mrcalindas?Smiling "Always, my friend. What can I do for you?" 

*How do you recommend a woman of color pick a doctor?
->Suggestion1
*What does a good dynamic between doctor and patient look like?
 ->Suggestion1

Mrcalindas?Neutral "A good doctor always listens to their patient’s concerns and should work to earn their trust through consistent, quality care. This can be especially important for minority groups and women."
Mrcalindas?Neutral "Doctors are under a lot of pressure to see many patients in a day, but good ones take the time to build that relationship." 
Mrcalindas?Neutral "Not every doctor is a good fit for every patient; it is okay to shop around. Ask for recommendations from friends."

* So you think it's possible for her to find a doctor she relates to?
-> Suggestion1
* What else could she look for in advance?
-> Suggestion1

==Suggestion1==
~ notification = "Mrcalindas_Day 2_Utilize online resources, including provider biographies and community directories of care providers_Lila2-3"
# notification Mrcalindas_Day 2_Utilize online resources, including provider biographies and community directories of care providers_Lila2-3

Mrcalindas?Smiling "Let your friend know that we are here to support her. If she is comfortable with the idea, she can come see me directly and I will help narrow her choices." 
Mrcalindas?Smiling "Each of our doctors lists useful information on their provider page on the website, including what languages they speak and maybe what their religious background is."
Mrcalindas?Smiling "Also, there are online directories one can use to search for doctors of color or LGBTQIA+ doctors."
Mrcalindas?Smiling "The same is true for therapists and other types of health providers." 
Mrcalindas?Smiling "Marginalized communities really come together and put this information together as a way of looking out for another."
Mrcalindas?Smiling "Different types of care come from different places -- you can find it in your local community and at the doctor’s office!"


* Oh good! What about if she freezes up when she goes to the doctor?
-> Suggestion2
* What advice would you give her?
-> Suggestion2

==Suggestion2==
Mrcalindas?Neutral "To prepare for doctor’s appointments, your friend can write things down in a small notebook dedicated to her health."
Mrcalindas?Neutral "Include <a>vitamins</a> and <a>supplements</a> she’s taking, <a>allergies</a>, symptoms and when they started, and notes about her mental health, or general concerns."
Mrcalindas?Neutral "This way, she can make sure she remembers everything she wants to bring up."
* Are there any other resources I could suggest to her?
-> Suggestion3
* That’s super helpful, is there anything else that might be useful?
-> Suggestion3

==Suggestion3==
~ notification = "Mrcalindas_Day 2_Patients can pick up printed materials about various health concerns from the doctor’s office_Lila2-4"
# notification Mrcalindas_Day 2_Patients can pick up printed materials about various health concerns from the doctor’s office_Lila2-4 

Mrcalindas?Neutral "You can let your friend know that we just put up a new wall of health related pamphlets for people to come in and take. A lot of doctors’ offices have these."
Mrcalindas?Neutral "These pamphlets break down complicated topics into simple terms for people to make things less intimidating."
Mrcalindas?Neutral "In addition to writing things down in her notepad, she can also make notes on these and save them in case more questions come up later."
Mrcalindas?Neutral "These pamphlets often have numbers for hotlines or websites patients can visit for more information."
Mrcalindas?Smiling "We want people to feel empowered taking control of their health -- the doctor’s office should be a safe place."

* Thank you, this has been really helpful!
-> Goodbye

==Goodbye==
Mrcalindas?Smiling "Tell your friend good luck! And let me know when you’re free for a cooking lesson."
* Thank you Mr.Calindas, and you got it!
-> END
* See you around, Mr.Calindas! Good luck with Brooklyn’s birthday party!"
-> END
