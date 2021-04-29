VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas2.txt"
# new_quest

Mrcalindas?Smiling "Ah. I'm happy you walked in, I want to ask <i>you</i> a question for a change. But first, how are you, {player_name}?" 

* Doing really well, Mr. Calindas. The Block party is really coming along!
  -> Chat1
* Doing really well, actually. I'm looking forward to our next cooking lesson.
  -> QuestIntro

==Chat1==

Mrcalindas?Smiling "It really is. I hear that you've got a bouncy castle, local food vendors, and everything. My grandson cannot stop talking about it. He's so excited he talks about it every night." 

* That's amazing. I used to love the bouncy castle at all of our old parties, so if he's excited I'm excited.
  -> Chat2
* That's so good to hear. He sounds like me when I think about our cooking lesson.
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, that's good. The neighborhood is starting to feel more connected. This Block Party has made everyone feel really good about where Bloomwood is heading." 

* That's so nice to hear, Mr. Calindas. Oh, before I forget, what did you need to ask me?
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Oh, yes. Bad news. I need to move out next cooking lesson. My mother has moved in with us, and I want her to feel settled."
Mrcalindas?Neutral "So it's going to be a while before our next lesson. I need to figure out how to make sure she settles in." 

* Oh, that's okay, Mr. Calindas. I'm excited to meet your Mom!
  -> QuestDetails1
* Oh, that's okay, Mr. Calindas. How can I help out?
  -> QuestAcceptance

==QuestDetails1==

Mrcalindas?Neutral "Well, she is a very fiesty 72 year old lady. She's very used to being active. Since my father passed she's been lonely and I thought living closer to us would be for the best."

* Well, that sounds like a great plan. Did you need any help settling her in?
  -> QuestDetails2
* I would love to help if you need anything.
  -> QuestAcceptance

==QuestDetails2==

Mrcalindas?Neutral "My mother is leaving behind many of her friends so it would be nice to find her good people her own age to talk to."
Mrcalindas?Neutral "I want her mind to stay sharp, and since she's been a bit depressed I'm worried. I don't know the first place to look for any of that, and I don't have a lot of time to prepare." 

* I can help with that! Do you want me to find some senior activity resources for Mother Calindas?
  -> QuestAcceptance
* Hmm. I think I can help with that. Do you want me to look for you?
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "That would save me so much time, {player_name}."
Mrcalindas?Smiling "Also, I would love to learn more about the resources there are to keep her fit and active! Thank you so much for helping and understanding." 

* It would be my pleasure to welcome her to the neighborhood. I'll be back with some ideas.
  -> Goodbye
* I can't wait to meet her and welcome her to the neighborhood.
  -> Goodbye

==Goodbye==

Mrcalindas?Smiling "I'm sure she'll be happy to meet you too. I'm going to go tell Lucy you're helping out. Talk to you soon!"

* Bye Mr. Calindas!
  ->END
* Tell Mrs. Calindas I said hi! See you soon!
  ->END

