VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas4.txt"
# new_quest

Mrcalindas?Smiling "Oh! {player_name}, come here. I want to show you something. My granddaughter Brooklyn is coming for the Block Party and she drew a picture of all the things she wants to do." 

* Hello Mr. Calindas, this looks so sweet. Wait. Is that a unicorn?
  -> Chat1
* Hey Mr. Calindas! This is so cute, how old is Brooklyn now?
  -> QuestIntro

==Chat1==

Mrcalindas?Smiling "It is! She says she loves unicorns, even though they don't exist. She loves animals so much and knows so many little facts about them. This is Jessica's oldest, you know." 

* Oh, yes! She's gotten so big. I'm really excited to see her. I sadly don't have a unicorn up my sleeve, though. Hah.
  -> Chat2
* Oh, yes! She's gotten so big. How old is she now?
  -> QuestIntro

==Chat2==

Mrcalindas?Smiling "If you did, she'd love you forever. I'm actually a bit worried about her attending the Block Party. It could be a little loud for her..." 

* Oh, really? How old is Brooklyn now? -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Brooklyn is 9, now. She's autistic, and so sometimes big events or theme parks can be overwhelming."
Mrcalindas?Neutral "Jessica was nervous about bringing her to the Block party, because she's very sensitive to sounds. Do you know if there's any support for children like Brooklyn?" 

* Hmm. Possibly, can you tell me more about what Brooklyn needs?
  -> QuestDetails1
* I'm not sure, but I can find out!
  -> QuestAcceptance

==QuestDetails1==

Mrcalindas?Neutral "Of course. Before we can bring Brooklyn to the Block Party we need to know that it's going to be a space where we can feel supported."
Mrcalindas?Neutral "If you have any tips on how we can prepare her for the Block Party, we'd be grateful." 

* I would love to help with that. Can you be specific about some of the needs Brooklyn has?
  -> QuestDetails2
* Okay, I think I can try and find some tips!
  -> QuestAcceptance

==QuestDetails2==
Mrcalindas?Neutral "Oh yes. Sometimes the sounds of everything can make her ears hurt. Also, if there's a lot to do, sometimes she can feel very overstimulated."
Mrcalindas?Neutral "Our whole family is going to be there, but Jessica doesn't want to feel like Brooklyn is being left out...so any activities we can do together would help us prepare." 

* Brooklyn is such a great kid. I really want her at the Block Party, so I'll see what I can find out!
  -> QuestAcceptance
* Okay, I think I can try and find some tips!.
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "Thank you so much {player_name}. If you could give us some information on activities so we can prepare, and make sure there are some options for her, we'd appreciate it."
Mrcalindas?Smiling "Don't worry, I don't expect unicorns." 

* Well, I can't promise a real unicorn, but I can promise that the Block Party is supposed to be for everyone.
  -> Goodbye
* I cannot commit to a unicorn, but I can commit to trying to make sure you're all supported..
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "We can always count on you to do your best, {player_name}. Anything you can find for us, will help us out a lot. Okay, I am going to head back to work. Enjoy the sunshine!" 

* Bye Mr. Calindas! See you soon!
  ->END
* I'll try and soak some in. I'll be back soon!
  ->END
