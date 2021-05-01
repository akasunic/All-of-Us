VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Elisa?Smiling "Hey {player_name}."

* What's up, Elisa?
  -> Chat1
* Are you studying, I see?
  -> Chat1

==Chat1==
Elisa?Smiling "My mom just sent a meme in the family group chat. I'm shocked. It was good!"

That's so funny!
  -> Chat2
Can I ask for your opinion on something?
  -> Explain1

==Chat2==
Elisa?Smiling "Now all my siblings are hopping on it... ugh this is so distracting actually. I should be studying..."

Can I ask you something?
  -> Explain1

==Explain1==
Elisa?Neutral "Yeah, sure you can ask me anything and I'll tell you if I'm comfortable answering."

Do you get nervous about going to the doctors?
  -> Explain2

==Explain2==
Elisa?Smiling "I am totally fine talking about this. You scared me for a second! But, no, I don't get nervous at the doctor's. My parents are a different story though it's like an entire ordeal."

What do you mean?
  -> Suggestion1
What kind of ordeal?
  -> Suggestion2

==Suggestion1==
Elisa?Smiling "Actually it is a good idea, but they write down any questions or symptoms to bring up to the doctor."
~ notification = "Elisa_Day 3_Mrs. Lee can write down her questions or symptoms before her appointment_Mrslee3"
# notification Elisa_Day 3_Mrs. Lee can write down her questions or symptoms before her appointment_Mrslee3

* That's smart, and so they just read it?
  -> Suggestion2
* That's a good idea.
  -> Goodbye

==Suggestion2==
Elisa?Smiling "Yeah, my parents don't speak English as good as me so like when my dad goes he gets a spanish translator to come into the room with him."
Elisa?Smiling "And they will translate any of his questions. I'm pretty sure it's only available for spanish at our clinic here."
~ notification = "Elisa_Day 3_Translators can sit in on the doctor's appointment (Spanish only)"
# notification Elisa_Day 3_Translators can sit in on the doctor's appointment (Spanish only)

* That's a good resource though
  -> Suggestion1
* A translator! Awesome!
  -> Goodbye

==Goodbye==
Elisa?Neutral "Okay, enough talking about my parents, this conversation is making me sleepy."

* Haha always nice chatting, Elisa
  ->END
* Buh-bye!
  ->END
