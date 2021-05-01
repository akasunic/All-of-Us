VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas3.txt"
# new_quest

Mrcalindas?Smiling "Hello {player_name}! Come here, I want to thank you. Lucy and I really appreciate your help with my Mother." 

* Oh, it's my pleasure. Is she settling in?
  -> Chat1
* Oh, no worries. Is there anything else she may need?.
  -> QuestIntro

==Chat1==
Mrcalindas?Smiling "Settling in? I think she and Mrs. Lee may take over the community center!"
Mrcalindas?Smiling "When I suggested aerobics, she was very excited, and I've signed her up for a senior weightlifting class too." 

* Weightlifting?! I didn't know we even had those classes
  -> Chat2
* Grandmas need to make gains too, I guess. Is there anything else she may need?
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, let me tell you. There's yoga, there's weightlifting, there's aerobics..."
Mrcalindas?Smiling "There's a lot to keep you active now. Which is good, because my mother has hypertension. The exercise is good for her." 

* Well, keeping fit sounds like a family motto here. Is there anything else she may need?
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Actually, there is one thing. My mother is very stubborn, and doesn't really like using a smartphone or computer for everything."
Mrcalindas?Neutral "A lot of the courses for seniors are in English. She speaks English well, but I think she'd feel better if she got some instruction in Spanish or Tagalog." 

* That sounds pretty simple. What is she looking to learn?
  -> QuestDetails1
* Hmm. I can ask around about programs.
  -> QuestAcceptance

==QuestDetails1==

Mrcalindas?Neutral "Well, she's mostly looking to learn how to check her health records, and use search engines, and maybe how to email or video chat with her sister in the Philippines." 

* Hmm. So general tech awareness? I think that's doable.
  -> QuestAcceptance
* I bet you there's a program at the Community Center or Library.
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "I am willing to pay if it costs money of course. I would teach her myself, but Lucy and I don't have a lot of time and patience."
Mrcalindas?Smiling "She would do really well with a younger person or a class with other people her age. If you could find a tech program in Tagalog or Spanish you'd help us a lot."

* Okay, I'll talk to a few people and see what I can find out.
  -> Goodbye
* Okay, I'll see what I can do.
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Thank you for saving us, {player_name}. Let me know what you find. I'm going to head into a meeting, I'll see you soon, take care!"

* Take care, Mr. Calindas!
 ->END
* I'll get right on this. Take care!
 ->END
