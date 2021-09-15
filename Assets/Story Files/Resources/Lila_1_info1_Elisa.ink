VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Elisa"
# new_contact

Elisa?Neutral "Hey {player_name}! How are you doing?"

* Hey Elisa! Not bad, was just looking for you to see if we could chat.
    -> Chat1
* Hi Elisa! Pretty good, how are you? 
    Elisa?Neutral "I'm hanging in there, "
    -> Chat1

==Chat1==
Elisa?Neutral "I have to pick up my brother from the daycare at the community center pretty soon, but that's in a bit. I would love to chat! What are you up to?"

* I've been walking around checking in with people. It's fun to just catch up sometimes since I spend a lot of time hopping around.
    -> Chat2
* I'm trying to help Lila with something, and was hoping you might be able to help. Are you still in contact with anyone from high school? 
    -> Explain1

==Chat2==
Elisa?Smiling "Definitely. Now that it's spring, I've been able to go out more with the Nature Club and it's been really nice to have some time to myself out of the house and outside of schoolwork."

* Yeah! You spend a lot of time helping your family, it's good that you have some time for your own interests.
    -> Chat3
* That's great! Hey, I was actually wondering whether you could connect me with anyone from your high school.
    -> Explain1

==Chat3==
Elisa?Smiling "I know. I work pretty hard in school,"
Elisa?Smiling "and I am looking forward to being done with this transfer process and being able to just spend time with the people I care about before I have to go."

* Speaking of, do you still hang out with your high school friends? 
    -> Explain1
* I could actually use your help if you still hang out with some of your high school friends. 
    -> Explain1

==Explain1==
Elisa?Neutral "Oh yeah, I still hang out with a bunch of friends from my high school rock climbing group, especially since I'm still in town."

* Do you think any of them would be interested in attending a speaker event about LGBTQ+ issues? Along the same lines, I was wondering if you had any professors in your college right now who might be interested in giving the talk on that topic.
    -> Explain2
* Lila's hoping to start a LGBTQ+ mentorship group for youth in the community, and this event is the kickoff. We're also looking for a speaker who would be a good inspirational and educational experience.
    -> Explain2

==Explain2==
Elisa?Neutral "I was just about to ask who the speaker was so I could let them know. I definitely think there would be interest in this."

* Do you have any recommendations then?
    Elisa?Neutral "I have to think about which professors might be able to give a talk, but "
    -> Suggestion1
* So the event would be on Saturday night at the community center, and would hopefully generate enough interest that Lila can sign people up for her LGBTQ+ mentorship group!
    -> Suggestion2

==Suggestion1==

~ notification = "Elisa_Day 1_Elisa can invite people she knows to an online event"
# notification Elisa_Day 1_Elisa can invite people she knows to an online event

Elisa?Smiling "I could invite everyone I know through my socials to an online event if you made one."

* Is there another way you might be able to get the word out?
  -> Suggestion2
* That would be great! I'll let Lila know.
  -> Goodbye

==Suggestion2==

~ notification = "Elisa_Day 1_Elisa needs a flyer that she can hang around campus, and give to her friends at the high school to hang up. She also has a gender-studies teacher who could be the speaker_Lila1"
# notification Elisa_Day 1_Elisa needs a flyer that she can hang around campus, and give to her friends at the high school to hang up. She also has a gender-studies teacher who could be the speaker_Lila1

Elisa?Smiling "If Lila could send me a flyer for the event, I can pass it out to my friends in the high school and in my college."
Elisa?Smiling "And you know, I can also talk to my gender studies professor, I've heard her speak before and I remember it being very thought-provoking. I'll ask if she's free!"

* Hmm, how else could you get the word out?
  -> Suggestion1
* That sounds amazing, this helps a lot. Thank you so much!
  -> Goodbye

==Goodbye==
Elisa?Smiling "No problem, this group sounds like a great idea."
Elisa?Smiling "I know several people who could definitely use support like this, and Lila is such a good person for them to look up to. Have Lila text me!"

* Will do, thanks again Elisa! Say hi to your brother for me!
  ->END
* I'll let her know, and let us know about your professor as soon as she gets back to you. See you soon!
  ->END
