VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "{player_name}, what’s up?"

* Hey Elisa! What are you up to today?
-> Chat1
* Hi Elisa! I’m just helping Lila out a little bit! How are you?
-> Chat1

==Chat1==
Elisa?Neutral "I’m about to pick up my brother from the Community Center so I’m studying while I wait. I have some time to chat! What’s keeping you busy today?"
* I’m just taking care of errands and checking in with people. It’s pretty fun!
-> Chat2
* Speaking of the Community Center, can I ask a question?
-> Explain1

==Chat2==
Elisa?Smiling "That does sound like a lot of fun! It’s nice getting to see people and I know it brightens their day."

Elisa?Smiling "I’ve really been enjoying spending time with my friends at the Nature Club now that the weather is getting better. Blow off some steam by being outside."
* It’s been super nice lately! Is Nature Club going well?
-> Explain1
* You work really hard! Can I ask something?
-> Chat3

==Chat3==
Elisa?Smiling "It’s been great! We did some nature walks and we're planning a picnic. It really makes my day when we have abuelos and little kids at the same gathering!"
Elisa?Smiling "We did leaf rubbings and plant identification last weekend, and one of the dads kept me from putting my hand right into a patch of poison oak!"
* That’s so awesome. I was actually wondering if you were still close with any of your high school friends?
-> Explain1
* I love it! Hey, speaking of events, do you have time for a question?
-> Explain1


==Explain1==
Elisa?Neutral "Absolutely. What's up?"

* That’s awesome! I’m helping Lila organize an LGBTQ+ mentorship group for youth in the community. 
-> Explain2

==Explain2==
Elisa?Smiling "She mentioned this last time we chatted. She was looking for a speaker, and I’ve been thinking about that ever since. Does she still need help? 
* She does! Would your friends be interested?
-> Suggestion1
* Yes! Do you have any suggestions for her?
-> Suggestion1

==Suggestion1==
~ notification = "Elisa_Day 1_Elisa can design and hang fliers for Lila around campus_Lila1-3"
# notification Elisa_Day 1_Elisa can design and hang fliers for Lila around campus_Lila1-3 

Elisa can design and hang fliers for Lila around campus_Lila1-3

Elisa?Smiling "Oh! Does Lila have fliers yet? I can put them up around campus on bulletin boards and share it with our GSA - the gay-straight alliance, LGBTQ+ student groups and other student organizations. 
Elisa?Smiling "A lot of groups on campus partner with community initiatives to emphasize how important it is to reach out to others and participate in your community. I’d be glad to help out with Lila’s fliers."
Elisa?Smiling "I can even design them for her!"
* A flier is a great idea- that is a huge help!
-> Suggestion2
* Do you have any other ideas?
-> Suggestion2

==Suggestion2== 
~ notification = "Elisa_Day 1_Open communication about LGBTQ+ related topics enables vulnerable community members to connect with resources that would remain concealed from them otherwise_Lila1-4"
# notification Elisa_Day 1_Open communication about LGBTQ+ related topics enables vulnerable community members to connect with resources that would remain concealed from them otherwise_Lila1-4 

Elisa?Smiling "As for Lila’s speaker, I took a class on the Western history of the LGBTQ+ community. I really enjoyed it.
Elisa?Smiling "Our professor was really open to talking with us about any of our own questions! They shared their experience as a nonbinary person, which was all new to me."
Elisa?Smiling "They were also connected to the school GSA and helped out a lot advocating for trans, nonbinary, and genderqueer student rights on campus and generally, making sure all students felt safe and protected."
Elisa?Smiling "They really cared about the campus community and all students."
Elisa?Smiling "I think they would be a great speaker for Lila. Have her email me and I'll make introductions."

* Thank you so much, Elisa! See you around!
-> Goodbye
* That would be incredible! I’ll let Lila know right away.
-> Goodbye

==Goodbye==
Elisa?Smiling "This group is an incredible idea. I have many friends who could use this support."
Elisa?Smiling "Lila is amazing for putting something like this together- I really look up to her. I’ll reach out."
* Thank you, Elisa! Take care, say hello to your brother for me!
-> END
* She would really appreciate hearing that. Thanks so much for all this. I’ll see you soon!
-> END

