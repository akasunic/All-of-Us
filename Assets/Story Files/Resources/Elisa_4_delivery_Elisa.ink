VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Elisa4.txt"
# new_quest

Elisa?Smiling "Oh, {player_name}. I'm so glad to see you. Wait until you hear this!"

* Are you okay, Elisa? 
-> Chat1
* Oh, this sounds intense. I'm listening.
-> QuestIntro

==Chat1==
Elisa?Smiling "First, let me set the stage. We're at the breakfast table - my folks, my siblings, me. I'm marking up a paper that's due tomorrow." 

Elisa?Smiling "My siblings are trading <a>memes</a> with Mama. She's holding her own, which is still funny as anything to all of us." 

* Right. Your mom's going to catch up with Mrs. Lee soon enough!
-> Chat2
* Ok... I can't guess what comes next.
-> Chat2

==Chat2==
Elisa?Neutral "So, eventually it's time for everyone else to head off to school. I'm not paying a lot of attention - it's just a noisy morning with missing shoes and field trip slips."

Elisa?Neutral "Suddenly, it's just Mama, me, and this heavy silence. I'd say a pregnant pause, but that's too literal." 

* The long pause... Oh no! What was on her mind?
-> QuestIntro

==QuestIntro==
Elisa?Smiling "I swear, I wasn't at all prepared for this." 

Elisa?Neutral "Turns out someone sent Mama a Tumblr post or something about "Ten Things I Wish I'd Known About <a>Reproductive Health</a>" or something. And it's in her head.

Elisa?Neutral "She suddenly busts out with 'I called the clinic and made an appointment for you to talk about <a>birth control</a>.' I nearly fell out!"

Elisa?Neutral "She said, 'You don't have to keep the appointment, but I think you should. I should have done this with you before now.' Just like that." 

* Just like that? 
-> QuestDetails1
* It sounds like this is out of character for her? 
-> QuestDetails1

==QuestDetails1==
Elisa?Smiling "When I tell you that my mom has worked hard to be more open than her parents, I'm underselling it. She tries so hard." 

Elisa?Smiling "But "the talk" was a book about <a>periods</a> on the end of my bed on my tenth birthday. And a "if you do, mija, make sure you love him." She's not ... big on sex talk."

Elisa?Smiling "I figured I'd see student health when I got to school, but ... I feel like this is a chance to help her help my siblings."

* And maybe get closer to your mom, too! 
-> QuestAcceptance


==QuestAcceptance==
Elisa?Smiling "That would be nice, but I don't know what I don't know."

Elisa?Smiling "I was hoping your network would have some suggestions." 

Elisa?Smiling "Both about what I need to know going into this appointment, and how to encourage my mom to keep being open like this." 

* I'm so glad you trust me! And I'm glad your mom is being so awesome.
-> Goodbye


==Goodbye==
Elisa?Smiling "She's pretty great, but I definitely feel better having some backup on this.

* Haha! It's my pleasure to help. Bye Elisa! 
->END


==== END ====
END
   -> END















