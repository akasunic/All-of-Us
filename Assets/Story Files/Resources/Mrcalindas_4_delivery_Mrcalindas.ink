VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas4.txt"
# new_quest

Mrcalindas?Smiling "Oh! {player_name}, come here. I want to show you something. My granddaughter Brooklyn is coming to visit. She drew a picture of all the things she wants to do in Bloomwood." 

* Hello Mr. Calindas, this is so sweet. Wait. Is that a unicorn?
  -> Chat1


==Chat1==

Mrcalindas?Smiling "It is! She says she loves unicorns, even though they don't exist. She loves animals and knows many little facts about them. This is Jessica's oldest, you know." 

* I'm really excited to see her. I sadly don't have a unicorn up my sleeve.
  -> Chat2
  
  * Hey Mr. Calindas! This is so cute, how old is Brooklyn now?
  -> QuestIntro


==Chat2==

Mrcalindas?Smiling "If you did, she'd love you forever. I'm actually a bit worried about her visit. It's exciting, but she's <a>autistic</a>, and changes to her routine can be hard." 

* Oh, really? How old is Brooklyn now? 
-> QuestIntro

* My cousin is autistic. He really thrives with routine and predictability. 
-> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Brooklyn is 9. She's such a determined little girl; now that we know that autism is why she faces challenges with some things, we have better tools for her."

Mrcalindas?Neutral "Jessica is nervous about her staying with us for a whole week, but she has a work commitment, and I think we are a better <a>childcare</a> option than hiring someone."

Mrcalindas?Smiling  "Brooklyn and my mother are best buddies. I think it will be good for both of them. Maybe not for my nerves - who knows what trouble they're going to cause!"

Mrcalindas?Neutral "I would love to know what resources exist in Bloomwood to help us make her feel comfortable and welcome."


* Hmm. Possibly, can you tell me more about what Brooklyn needs?
  -> QuestDetails1


==QuestDetails1==

Mrcalindas?Neutral "Of course! This is an act of faith - in all of us - on Jessica's part. I know that Brooklyn needs understanding adults who know how to respond to her <a>sensory needs</a>." 

Mrcalindas?Neutral "I was also hoping there might be some kid-friendly events coming up that might be accessible to people with different <a>disabilities</a>."


* Can you be specific about some of the needs Brooklyn has?
  -> QuestDetails2
* Okay, I think I can try and find some tips!
  -> QuestAcceptance

==QuestDetails2==
Mrcalindas?Neutral "Oh yes. Sometimes the sounds of everything can make her ears hurt. Also, if there's a lot going on and no way to step back, sometimes she can feel very <a>overstimulated</a>."

Mrcalindas?Neutral "Knowing more about the possible activities can help us prepare." 

* Brooklyn is such a great kid. I'll see what I can find out!
  -> QuestAcceptance


==QuestAcceptance==
Mrcalindas?Smiling "Thank you so much {player_name}. I appreciate you helping me plan ahead."
Mrcalindas?Smiling "Don't worry, I don't expect unicorns." 

* Well, I can't promise a unicorn, but I promise that I'll do what I can.
  -> Goodbye


==Goodbye==
Mrcalindas?Smiling "We can always count on you to do your best, {player_name}. Anything you can find for us, will help us out a lot. Okay, I am going to head back to work. Enjoy the sunshine!" 

* Bye Mr. Calindas! See you soon!
  ->END
* I'll try and soak some in. I'll be back soon!
  ->END
