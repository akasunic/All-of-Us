VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Heyyy {player_name}!"

* Hi Rashad! What's up.
    Rashad "Just sat down for a little reading. "-> Chat1
* Hey Rashad! What's that you're reading?
    -> Chat1

==Chat1==
Rashad?Smiling "This book is one of my favorites from my early adulthood. It's another science fiction novel, as you might have guessed."

* Of course! That's almost all you read, after all.
    -> Chat2
* I bet your kids learned their love of science fiction from you! How is the family?
    -> Explain1

==Chat2==
Rashad?Smiling "Hey! I read a lot of books, I just speed through the ones I'm less interested in. I am a librarian, I have to have a good sense of our selection. It's the science fiction books that I savor."

* I got into more non-fiction as an adult. I still remember some of the most fun reading I did was when I was in my early teens though.
    -> Chat3
* I bet you take all the free time you can get to read. Are you still reading to your kids every night like you used to? How are they by the way?
    Rashad?Neutral "They're getting a little big for it, but we still try to at least twice a week!" 
    -> Explain1

==Chat3==
Rashad?Smiling "Definitely. I think YA books are some of our strongest and most sought selection."
Rashad?Smiling "I bring Octavia and Charles quite often to run around, I mean- walk quietly, and explore the selection of kids books."

* Speaking of, how are they? How is Cheryl?
    -> Explain1
* I haven't seen Octavia and Charles in so long! How are they?
    -> Explain1

==Explain1==
Rashad?Neutral "My family is doing well! I haven't seen my mom in a while though. She's been visiting her sister out of town, and she so rarely does that."
Rashad?Neutral "I'm not used to her not being around! I'll see her after the Block Party though."

* Darn, I was hoping to catch up with her. I spoke to a friend this morning who is struggling with some health issues.
    -> Explain2

==Explain2==
Rashad?Neutral "Is she okay? Can I do something to help or do you need my mom?"

* You might be able to actually. My friend is worried about specific health issues she might experience as a Black woman.
    -> Suggestion1
* Possibly, do you know of any notable health experiences your mom has had?
    -> Suggestion2

==Suggestion1==
Rashad?Smiling "Well, the library would definitely be a good place to find resources, I can get her a card if she needs one."
Rashad?Smiling "I also know my wife swears by walking every day and regulating her salt intake. She says it solves all the problems that matter."

~ notification = "Rashad_Day 2_Rashad can get Lila a library card to look at health-related literature. He also says his wife walks every day and regulates her salt intake to stay healthy"
# notification

* Do you think there is anything else she could look into? Maybe any experiences your mom has had?
    -> Suggestion2
* This is really helpful. I'm glad to hear family is doing well, and I can't wait to see the kids at the party this weekend!
    -> Goodbye

==Suggestion2==
Rashad?Smiling "Well, a big one when I was really little was that my mom struggled with some unnoticeable symptoms that led to metabolic syndrome."
Rashad?Smiling "We talk about that diagnosis whenever she gets tested now to check her symptoms. We also have a website at the library that I use when I need more information. I can send it to you."

~ notification = "Rashad_Day 2_Rashad’s mother had hidden symptoms that later proved to be metabolic syndrome through tests done at the doctor’s office. He also suggested a website he uses regularly that Lila can look at for health information: medlineplus.gov_Lila2"
# notification

* Do you have any other advice?
    -> Suggestion1
* Oh, I'll pass this along, this is really valuable. Thanks for your help! Give my best to Cheryl and the kids today.
    -> Goodbye

==Goodbye==
Rashad?Smiling "Thank you! Glad I could help, I hope your friend is okay. See you around!"

* Bye, Rashad!
    ->END
* See you, Rashad!
    ->END

