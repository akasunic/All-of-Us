VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Elisa?Smiling "Good afternoon, {player_name}!"

* Hi Elisa! How are you?
-> Chat1
* Hey Elisa! What’s going on these days?
-> Chat1

==Chat1==
Elisa?Smiling "I’m doing well! I was just texting my mom and procrastinating my homework a little bit. I think I’m gonna take my siblings out for ice cream later."

* Ooh, I could go for a sundae. Where at?
-> Chat2
* Nice! Hey, can I ask you for advice about building and finding communities?
-> Explain1

==Chat2==
Elisa?Smiling "My college’s GSA is doing an ice cream social fundraiser for HIV/AIDS research funding."
Elisa?Smiling "I was already planning on going out to support with my friends, but I know I’m not the biggest sweet tooth in the house so I thought I’d see if my siblings were interested!"
Elisa?Smiling "Also, it’s a convenient, fun way to get my family and my friends in the same place. I really want those parts of my life to come together."

* Totally. How did you connect with your community at school?
-> Explain1
* OK, so question - how did you begin forming good relationships at college?
-> Explain1

==Explain1==
Elisa?Neutral "Hmm.. Community building on your own is really hard, especially when you’re looking for personal, lasting connections."
Elisa?Neutral "No one really explains how to start in explicit terms. One advantage of still being in school is that you are always surrounded by other people and it’s easy to take the convenience of that for granted."
Elisa?Smiling "I feel really lucky to have so many clubs and events to check out."

* That's so true. How else have you met new people?
-> Explain2
* What would you tell someone struggling to find community?
-> Suggestion1

==Explain2==
Elisa?Neutral "I’m definitely no expert. Finding the right places for anyone is a lifelong task."
Elisa?Smiling "Sometimes I go to community sponsored events or even bump into new friends just in the line at the coffee shop!"
Elisa?Smiling "It feels like I make the best connections by being open to opportunities when they appear."

* You are wise beyond your years, Elisa!
-> Suggestion1
* You don't seem like a social butterfly, but you definitely think like one!
-> Suggestion1

==Suggestion1==
~ notification = "Elisa_Day 3_Community institutions like libraries host affinity groups and free community events_Lila3-1"
# notification Elisa_Day 3_Community institutions like libraries host affinity groups and free community events_Lila3-1 

Elisa?Smiling "haha! Thanks, I think?"
Elisa?Smiling "Many colleges, universities, libraries, and other community-oriented spaces tend to invite in speakers or host free events."
Elisa?Smiling "Most of these are based on interests or hobbies and happen on a regular basis -- If you show up enough, people start to really remember your name!"
Elisa?Smiling "Another benefit of those is that the people going are also often looking for similar connections. If everyone's looking for friends, it's just easier."
Elisa?Smiling "If I were rebuilding, or looking for new friends, I might start there!"

* What if someone is looking to meet those who are a part of a specific community?
-> Suggestion2
* That sounds great, thank you Elisa!
-> Goodbye

==Suggestion2==
~ notification = "Elisa_Day 3_Find opportunities to connect at places where people are already gathering for a common purpose_Lila3-2"
# notification Elisa_Day 3_Find opportunities to connect at places where people are already gathering for a common purpose_Lila3-2 

Elisa?Smiling "Oh! I met one of my closest friends while volunteering at an event with the organization for first-generation students on campus."
Elisa?Smiling "I showed up not knowing what to expect, and we ended up writing letters to members of Congress on behalf of undocumented farm workers."
Elisa?Smiling "It's an issue close to my heart, but I never knew that you could just write Congress, and that sometimes those letters have impact."
Elisa?Smiling "Organizations based around uplifting a certain group of people, whether that’s being a part of a specific identity, or having a shared interest is a direct way to meet others!"
Elisa?Smiling "Look for the places that people are already gathering - even if it isn't an activity you immediately identify with." 

* This is all really good thinking. Thank you, Elisa!
-> Goodbye

==Goodbye==
Elisa?Smiling "I hope that helps some!"

* Thanks so much, Elisa!
-> END
* Bye Elisa!
-> END
