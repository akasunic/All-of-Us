VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==

Elisa?Smiling "Hi {player_name}, it's so nice to see you! How's your day going?"

* Pretty great! How are you, Elisa? 
 -> Chat1
* It's nice to see you too! I've been pretty good. How about yourself? 
-> Chat1

==Chat1==
Elisa?Smiling "I'm well! I have a lot going on. So many moving pieces to get in order before the next school year, you know?"
Elisa?Smiling "The transition from Bloomwood Community College to a state school is exciting, but stressful too! What's new with you?"

* It sounds like you have a lot on your plate. 
-> Chat2
* I totally get it. Hey, there's something I wanted to ask you.  
-> Explain1

==Chat2==
Elisa?Smiling "I need to figure out a way to pay for these textbooks. School can be so expensive! Maybe I can get a part-time job, but I'm not sure where."
Elisa?Smiling "Ugh. I'll figure it out."

* I'm sorry to hear that. School is already stressful enough.
-> Chat3
* I may have a solution if you're interested?  
-> Explain1

==Chat3==
Elisa?Smiling "It's okay, I still have a few weeks to come up with a plan. So I don't have to enter panic mode just yet!"
Elisa?Smiling "I'm nothing if not resourceful. Some combination of patience and persistence will get me there, right?"

* Actually, I think I might have a solution for you! 
-> Explain1

==Explain1==
Elisa?Neutral "What's up? I'm all ears."

* There's a part-time opening at the library. I think you're a perfect fit!  
  -> Explain2
* The library is looking for an extra set of hands in the YA section. Interested?
 -> Explain2

==Explain2==
Elisa?Smiling "That's definitely up my alley! I was afraid I'd end up waiting tables again... I'm so, so bad at waiting tables."
Elisa?Smiling "I applied to the plant nursery, but they didn't have any openings; it's probably just as well. I don't need to be bringing home every nearly-dead succulent each week."
Elisa?Smiling "I love the library, and I really like Rashad. It sounds like fun! I'd love to learn more."

* Rashad posted a job listing on the library's website!
  -> Suggestion1

==Suggestion1==

~ notification = "Elisa_Day 1_Elisa will polish up her resume and apply through the library website_Rashad1-1"
# notification Elisa_Day 1_Elisa will polish up her resume and apply through the library website_Rashad1-1

Elisa?Smiling "Do they hire students? My school schedule is pretty hectic, but I'll definitely apply. Plus, I love YA fiction." 
Elisa?Smiling "I will polish up my resume and apply as soon as possible! Is resume writing something the library offers a workshop in?"

* I think a student is exactly what Rashad is looking for.
-> Suggestion2
* I'm happy to look over your resume before you apply!
 ->Suggestion2

==Suggestion2==
~ notification = "Elisa_Day 1_A part-time job in the library will look good on Elisa's resume_Rashad1-2"
# notification Elisa_Day 1_A part-time job in the library will look good on Elisa's resume_Rashad1-2

Elisa?Smiling "This sounds like a great way to build up experience, too. I feel like it would look great on my resume!" 
Elisa?Smiling "I'm usually free Monday afternoon and on weekends; I hope that's enough to be helpful. How do I apply for the position?" 

* That's great to hear! You can apply through the library's website. 
-> Goodbye

==Goodbye==
Elisa?Smiling "That sounds awesome, {player_name}! I can definitely pull this off. Thanks so much, I really could use the extra cash..." 
Elisa?Smiling "and the process doesn't seem like a hassle. I've got to head to a study session, but I'll see you later!"

* You'll knock it out of the park! Send me that resume when you're ready! 
->END
* I can't think of a better candidate! You'll be great! 
->END









