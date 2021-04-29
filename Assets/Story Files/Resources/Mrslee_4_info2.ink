VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey, friend!"

* Hey Lila
  -> Chat1
* Got a minute?
  -> Chat1

==Chat1==
Lila?Smiling "Hmm how are you?"

* I was just checking out ... the community center programming!
  -> Chat2
* I heard Eddie is on the drive over!
  -> Explain1

==Chat2==
Lila?Smiling "We have a lot going on this weekend, I don't even think all the events are posted yet..."

* What are you most excited about?
  -> Chat3
* Have you seen Eddie?
  -> Explain1

==Chat3==
Lila?Smiling "I'm most excited to see everyone, actually! I haven't seen Eddie in what feels like forever."

* Aw, you and Eddie are really close.
  -> Explain1
* Mrs. Lee said this is the longest he's been gone!
   -> Explain1

==Explain1==
Lila?Smiling "Eddie is like a brother to me, seriously. I can't wait to hear about his experience away at school. We have so much catching up to do... at least we used to tell each other everything."

* Awww.
  -> Explain2
* Are he and Mrs. Lee very open with each other?
  -> Explain2

==Explain2==
Lila?Smiling "Y'know, my perception is that a little distance between them is helping Eddie and helping Mrs. Lee get to know themselves a little bit more."

* So this weekend is like a reunion!
  -> Suggestion1
* Are you gonna go to their house later?
  -> Suggestion2

==Suggestion1==
Lila?Smiling "Eddie's been learning a lot about exercise and his blood pressure, and his diet. He's been cooking, if you can believe it!"
Lila?Smiling "Mrs. Lee could start the conversation to show that she's thinking about him, and she could write down his medical history over the last few months."
~ notification = "Lila_Day 4_Mrs. Lee can talk with Eddie about their recent health experiences._Mrslee4"
# notification Lila_Day 4_Mrs. Lee can talk with Eddie about their recent health experiences._Mrslee4

* {not Suggestion2} That's an important conversation to have
  -> Suggestion2
* That's actually a really great idea
  -> Goodbye

==Suggestion2==
Lila?Smiling "Yeah, I could go and facilitate a conversation about their health, but I don't think they really need me. They've grown so much in their ability to connect as a family."
~ notification = "Lila_Day 4_Lila could facilitate the health conversation between Mrs. Lee and Eddie"
# notification Lila_Day 4_Lila could facilitate the health conversation between Mrs. Lee and Eddie

* {not Suggestion1} Hmmm...
  -> Suggestion1
* I think that's a good idea.
  -> Goodbye

==Goodbye==
Lila?Smiling "Listen, still lots to prepare. I gotta run."

* You and me both!
  ->END
* OK! Bye!
  ->END
