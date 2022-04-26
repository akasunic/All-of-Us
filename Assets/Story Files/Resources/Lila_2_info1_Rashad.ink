VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Rashad?Smiling "Hi {player_name}!"
* Hi Rashad! What are you reading?
-> Chat1
* Hey Rashad! What’s going on?
-> Chat1

==Chat1==
Rashad?Smiling "I’ve been rereading some of my favorite books from when I was younger. No surprise, this one is science fiction, but I love a good action packed book about space. What can I say?"
Rashad?Smiling "I wanna get the kids into them someday too."
* I’m sure your kids are gonna love sci-fi just as much as you do.
-> Chat2
* Hey ... Can I ask a question?
-> Explain1

==Chat2==
Rashad?Smiling "I hope they do! Octavia and Charles have been asking us to read from chapter books, which is a nice change!"
Rashad?Smiling "I started as the youth librarian in Bloomwood, so you know the YA and kids section here is solid."
Rashad?Smilng "We stop by after school when we can, and let them pick out their own books."
Rashad?Smiling "When my mom is around, they like listening to her read because she’s so expressive. They say my voices are just as good, but I doubt it."
* It must be really nice bonding with your kids over something you love.
-> Chat3
* That’s so sweet! Hmm.. I have a question.
-> Explain1

==Chat3==
Rashad?Smiling "It is! I feel really cool showing them around the library and letting them see me at work!"
* I bet! Hey, can I ask you a quick question?
-> Explain1
* The Library is cool! Hey, do you have a minute?
-> Explain1

==Explain1==
Rashad?Neutral "Absolutely. Is everything okay? Can I do something to help?"
* Do you have any advice for a Black woman with doctor anxiety?
-> Explain2
* Maybe. How has your mom handled her health in the past?
-> Suggestion1

==Explain2==
Rashad?Neutral "Tell your friend it’s okay to be nervous, but it’s really important to take care of yourself."
Rashad?Neutral "It’s hard enough to take care of yourself and we all deserve to feel safe going to the doctor,"
Rashad?Neutral "Especially because talking about your medical worries can be very sensitive and anxiety inducing."
* Exactly! My friend is really anixious. Do you have any ideas for her?
-> Suggestion1
* Definitely. Do you know of any resources that may be helpful for her?
-> Suggestion1

==Suggestion1==
~ notification = "Rashad_Day 2_Some insurance companies offer telehealth nurse services_Lila2-1"
# notification Rashad_Day 2_Some insurance companies offer telehealth nurse services_Lila2-1 

Rashad?Smiling "Oh! If your friend is nervous about going to the doctor, some insurance companies have nurse hotlines you can call and ask questions."
Rashad?Neutral "One benefit is that she can figure out what is important to bring up in-person, and what questions to ask."
Rashad?Neutral "When Olivia had an allergic reaction, the nurse asked us all the questions the doctor ended up asking, so we were prepared."
Rashad?Smiling "Cheryl even brought the new laundry detergent with us, in case it mattered. Because the nurse asked about new cleaning products!"
Rashad?Smiling "It’s a really flexible and low stress way to ask questions about little things - or to figure out if something IS little."
Rashad?Smiling "Sometimes it’s hard to make an appointment if you are still hoping that something will just go away on its own. The nurse hotlines are great for that!" 
* What about if she’s nervous discussing her health in general?
-> Suggestion2


==Suggestion2==
~ notification = "Rashad_Day 2_Connecting with other Black women might give Lila the support she's looking for_Lila2-2"
# notification Rashad_Day 2_Connecting with other Black women might give Lila the support she's looking for_Lila2-2

Rashad?Smiling "Outside of going to the doctor, I really recommend that she connect with other Black women."
Rashad?Smiling "Both my mom and Cheryl's have benefited from support groups. General resources were really helpful."
Rashad?Smiling "But meeting other Black women who were dealing with the same health concern was a game changer."
Rashad?Smiling "They also connect each other to resources. The specialist referrals alone saved Mom so much heartache."
Rashad?Smiling "When one of them needs help, they advocate for one another. I know that type support has been invaluable. I can send you the information."

* Thank you,I think that would be really meaningful for her.
-> Goodbye
* I’ll definitely bring that up to my friend! Thank you so much Rashad.
-> Goodbye

==Goodbye==
Rashad?Smiling "I hope some of that is helpful. If you need anything else, let me know!"
* Thanks so much, Rashad!
-> END
* Bye Rashad!
-> END
