VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

===intro===
~ new_quest = "Lila4.txt"
# new_quest

Lila?Smiling "Hi there {player_name}! Really quick, I wanted to thank you for helping me out with getting that health information for me the other day."
Lila?Smiling "I got referred to a Black doctor not too far away. We did a quick <a>consultation</a> to see how I like her and I already feel way more comfortable about going to the doctor."
* I’m so glad to hear that! It sounds like it could be a good fit.
-> Chat1
* I’m happy you are on the path to a good relationship with a doctor!
-> Chat1

== Chat1 ==
Lila?Smiling "Me too. She’s super cool, I’m even thinking about referring my mom to her if she doesn't have a regular doctor she loves."
Lila?Smiling "She could probably use a check-up too."
* It’s good to see your doctor regularly!
-> QuestIntro
* How is your mom?
-> Chat2

== Chat2 ==
Lila?Smiling "Oh, you know... she’s off traveling and seeing the world. She has always loved seeing the sights and exploring. I have souvenirs going all the way back to when I was a kid."
Lila?Smiling "It’s been a while since she’s been in Bloomwood. Since she retired, we haven’t gotten to connect much, unfortunately, but we love each other a whole lot."
Lila?Smiling "I’m a bit more of a homebody, but there’s no one quite as adventurous as mom!"
* Hopefully she comes back sometime soon so y’all can catch up!
-> QuestIntro
* I’d love to say hi when she stops in next.
-> QuestIntro

== QuestIntro ==
Lila?Neutral "Hey, along those lines, I started doing some research on some of my own symptoms. I learned about something called <a>rheumatoid arthritis</a>."
Lila?Neutral "Can I talk this out with you a little bit? I'm only just learning about autoimmune diseases."
* I know some, but can you tell me more?
-> QuestOverview

== QuestOverview ==
Lila?Neutral "Honestly, it’s a little sensitive to talk about so I don’t know a whole lot just yet, but RA is a chronic autoimmune disorder. It’s when your body’s immune system attacks your joints."
Lila?Neutral "I don’t know if it’s <a>genetic</a>, but apparently it does appear commonly in certain families."
Lila?Neutral "I’d really like to ask my mother about her health experiences and our family medical history, but I’m nervous to reach out to her in that way."
Lila?Neutral "It’s just more difficult when it’s so close to home and <a>advocating</a> for myself in this manner is really new. I still have a lot to learn about myself and her."
* Do you know if she’s had symptoms of autoimmune disorders before?
-> QuestDetails1
* It’s really important to know these things so you can inform yourself and doctors.
-> QuestDetails1

==QuestDetails1==
Lila?Neutral "I really don’t know! And I'm not entirely certain how to ask."
Lila?Neutral "My mom is a very open person, but that doesn’t make it easier to have these conversations even as an adult. It’s neither of our faults, we just haven’t gotten there yet."
Lila?Neutral "I really want to be better informed so I can make sure my doctor knows exactly what she needs to help me get the right care."
* Do you have any family medical records?
->  QuestDetails2
* I can see what I can find out about how to start gathering medical records.
-> QuestAcceptance

==QuestDetails2==
Lila?Neutral "Not really. My grandparents died when I was young, and like I said, mom and I haven't really talked about our shared medical history very much."
Lila?Neutral "Overall, I just feel like I’m completely in the dark about really important things. Any help on approaching this would be so helpful"
* I’ll do my best to find things that work for you. 
-> QuestAcceptance
* Completely, Lila. I don’t want you to feel lost.
-> QuestAcceptance

==QuestAcceptance==
Lila?Smiling "Thank you so much."
* Hopefully I can get you some information on health records!
-> Goodbye
* I’ll see what I can find out!
-> Goodbye

==Goodbye==
Lila?Smiling "{player_name}, I really appreciate you continuing to help me like this. I feel a lot better even being able to confide this in you."
* Of course, Lila! Anything for you. I’ll be right back.
-> END
