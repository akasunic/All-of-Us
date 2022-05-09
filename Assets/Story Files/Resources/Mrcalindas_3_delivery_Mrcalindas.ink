VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas3.txt"
# new_quest

Mrcalindas?Smiling "Come here, {player_name}! I want to thank you. Paz and I really appreciate your help with my Mother." 

* Oh, it's my pleasure. Is she settling in?
  -> Chat1
* Oh, no worries. Is there anything else she could use?
  -> Chat1

==Chat1==
Mrcalindas?Smiling "I think she and Mrs. Lee may take over the community center!"

Mrcalindas?Smiling "When I suggested <a>aerobics</a>, she was very excited. I helped her sign up for a senior <a>weightlifting</a> class too." 

* Weightlifting?! I didn't know we even had weightlifting classes
  -> Chat2
* Grandmas need to <a>make gains</a> too! Is there anything else I can do to help?
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, let me tell you. There's yoga, there's weightlifting, there's aerobics..."

Mrcalindas?Smiling "There's a lot to keep you active now. Which is good, because my mother has <a>hypertension</a>. The exercise might help her manage that." 

* Keeping fit sounds like a family motto! Is there anything else she needs?
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Actually, there is one thing. My mother is very stubborn, and doesn't really like using a smartphone or computer."

Mrcalindas?Neutral "A lot of the courses for seniors are in English. She speaks English well, but I think she'd feel better if she got some instruction in <a>Spanish</a> or <a>Tagalog</a>." 

* That sounds pretty simple. What is she looking to learn?
  -> QuestDetails1
* Hmm. I can ask around about programs.
  -> QuestAcceptance

==QuestDetails1==

Mrcalindas?Neutral "Well, she's mostly looking to learn how to check her <a>health records</a>, and use <a>search engines</a>, and maybe how to email or video chat with her sister in the Philippines." 

Mrcalindas?Neutral "I'd also love any general suggestions for making it easier for her to navigate the internet.Tools and resources of any sort."

* Hmm. So general tech awareness? I think that's doable.
  -> QuestAcceptance
* I bet you there's a program at the Community Center or Library.
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "I am willing to pay if it costs money, of course. I would teach her myself, but that would not be good for any one's blood pressure."

Mrcalindas?Smiling "I am my mother's son, I guess. I want to be able to teach her, and I think she wishes she could learn from me. But I want to save us both the stress."

Mrcalindas?Smiling "She would do really well with a younger person or a class with other people her age. If you could find a tech program in Tagalog or Spanish you'd help us a lot."

* Okay, I'll talk to a few people and see what I can find out.
  -> Goodbye


==Goodbye==
Mrcalindas?Smiling "Thank you for helping us, {player_name}. Let me know what you find. I'm going to head into a meeting, I'll see you soon, take care!"


* I'll get right on this. Take care!
 ->END
