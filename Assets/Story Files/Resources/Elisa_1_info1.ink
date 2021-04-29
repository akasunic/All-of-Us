VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Rashad"
# new_contact
Rashad?Smiling "Hey there adventurer! What's your quest today?"

+Ha, I've gotta go dig up some ancient tomes on career fairs.
    ->R1
+You wouldn't happen to know anything about career fairs, would you?
    ->R2

===R1===

Rashad?Smiling "Career fair huh? Now that takes me back. What are you learning about career fairs for? Block party planning got you down?"

+No, no, I'm doing research to help my friend Elisa. She's a college student.
    ->R3
+As if! It's for a friend of mine. 
    ->R4

===R2===

Rashad?Smiling "Oh, sure! I went to quite a few career fairs when I was in college. We sometimes use them to recruit future librarians, too. What seems to be the problem?"

+My friend Elisa needs some advice- should she prepare anything for the career fair?
    ->elevatorPitch
    
===R3===

Rashad?Smiling "Ah, a college student! Well, maybe I can help. What seems to be the problem?"

+Well, she's never been to a career fair before and she needs some advice. What should she prepare before the event?
    ->elevatorPitch

===elevatorPitch===

Rashad?Smiling "She'll probably want to practice an elevator pitch for when she goes up to people. It should be short and to the point."
Rashad?Smiling "The major points to hit would be a personal introduction, what her career goals are, what her experience is, and what she would bring to the company."

~ notification = "Rashad_Day 1_Prepare an elevator pitch_Elisa1"
# notification Rashad_Day 1_Prepare an elevator pitch_Elisa1

+Elevator pitch, got it. What do you think should she bring to the career fair?
    ->RBringItems

===R4===

Rashad?Smiling "A friend of yours! Well, any friend of {player_name}'s is a friend of mine! What seems to be the problem?"

+Well, she's never been to a career fair before and she needs some advice. What should she prepare before the event?
    ->elevatorPitch
    
===RBringItems===

Rashad?Smiling "Ah, well tell her to bring some copies of her resume to hand off to the recruiters."
Rashad?Smiling "They won't always keep them, but if they do, the recruiter might pass it onto other people in the company that are hiring."
Rashad?Smiling "She'll probably want to bring a few different ones, too, if she knows what kinds of jobs she's looking for. A targeted resume can help you stand out to recruiters more."

~ notification = "Rashad_Day 1_Bring copies of your resume to a career fair_Elisa1"
# notification Rashad_Day 1_Bring copies of your resume to a career fair_Elisa1
~ notification = "Rashad_Day 1_Recruiters won't always keep your resume"
# notification Rashad_Day 1_Recruiters won't always keep your resume

+What's a targeted resume?
  ->targetedResume 
+Makes sense. Is there anything else she should bring besides her resumes?
 ->RBringNotes

===targetedResume===

Rashad?Smiling "It's just like a normal resume, only it narrows down your work experience and education to just what's relevant for the role you're applying to."
Rashad?Smiling "That way, it's easier for the hirers to see at a glance that you'd be a good fit."

+Got it. Is there anything else she should bring?
-> RBringNotes

===RBringNotes===

Rashad?Neutral "Hmmm... that's the big one. Maybe tell her to bring a pen and a notepad so she can write down people's information."

~ notification = "Rashad_Day 1_Bring a pen to take notes_Elisa1"
# notification

+Got it! Do you have any tips for good conversation?
    ->RConvoTips
    
===RConvoTips===

Rashad?Smiling "Sure! The conversation doesn't have to be about marketing yourself and convincing them to hire you, your friend should try to make a good connection."
Rashad?Smiling "So, you could turn the tables on the recruiter- ask them what drew them to the company, what it's like to work there, stuff like that!"

~ notification = "Rashad_Day 1_Be sure to prepare questions to ask the hirers_Elisa1"
# notification

+Awesome! One last question then, do you have any general tips for success?
    ->RGeneralTips


===RGeneralTips===

Rashad?Neutral "Just be sure to follow up afterwards, definitely. You can contact most recruiters online- do you know if she's good with computers?"

+Not really, no.
    ->Rtech1
+She seems to be pretty decent!
    ->Rtech2
    
===Rtech1===

Rashad?Smiling "Well, either way, if she needs help she can always swing by the library!"
Rashad?Smiling "She'll probably want to email the recruiters or add them on Linkedin after the fair. I can help her set that up if she doesn't have an account yet."

~ notification = "Rashad_Day 1_Linkedin and email are great places to follow up_Elisa1"
# notification
~ notification = "Rashad_Day 1_You can go to the library for more help"
# notification

+Great, thanks Rashad!
    ->segueOut
    
===Rtech2===

Rashad?Smiling "Alright! Well, she'll probably want to email the recruiters or add them on Linkedin after the fair."
Rashad?Smiling "And if she needs any help reaching out, be sure to let her know that she's welcome to swing by the Library and ask me any questions."

~ notification = "Rashad_Day 1_Linkedin and email are great places to follow up_Elisa1"
# notification
~ notification = "Rashad_Day 1_You can go to the library for more help"
# notification

+Great, thanks Rashad!
    ->segueOut


===segueOut===

Rashad?Smiling "Yeah, no problem!  Oh, and one other thing- confidence is huge for stuff like this."
Rashad?Smiling "I know it gets overwhelming with all the folks in the auditorium and the long wait times, but tell your friend that she's got this."
Rashad?Smiling "Plus, doing some positive self-talk before and during the event can help keep your spirits high."

~ notification = "Rashad_Day 1_Practice positive self-talk during the event_Elisa1"
# notification
~ notification = "Rashad_Day 1_It can get overwhelming with all the people in the auditorium"
# notification

+What's positive self-talk?
    ->selfTalk
+Got it, makes sense!
    ->visualization

===selfTalk===

Rashad?Smiling "Self talk is like being your own cheerleader. Instead of thinking "oh my god, I'm not qualified, I don't belong here" and things like that, you gotta be your own wingman!"
Rashad?Smiling "Tell her to focus on thoughts like "I'm ready," "I can do this," and "no matter what, it'll turn out ok.""
Rashad?Smiling "If she keeps up her positive thinking, it'll go a long way in helping her present her best self at the career fair."

+Wow, that's awesome!
    ->visualization
+And that stuff works?
    ->selfTalk2

===visualization===

Rashad?Smiling "Oh, and tell her that for another confidence boost, she could try visualizing herself as one of her role models!"


+Visualizing herself?
    ->vis2
+Oh interesting!
    ->vis3

===vis2===

Rashad?Smiling "Yeah! If you picture a role model or a strong leader before an event, it'll help you feel more confident during it."
Rashad?Smiling "When I get nervous, I always picture Billie Dee Williams. Or my uncle. He kind of looks like Billie Dee Williams, now that I think about it... "

~ notification = "Rashad_Day 1_Visualize your role models for a confidence boost during the event_Elisa1"
# notification
~ notification = "Rashad_Day 1_One person you can imagine is Billie Dee Williams"
# notification

+I'll be sure to pass that along! Thanks Rashad!
    ->REnd
+Sounds good! I'll go tell Elisa- thanks for all your help.
    ->REnd

===vis3===

Rashad?Smiling "Yeah, all she'd have to do is picture a role model or a strong leader before an event. It’ll help her feel a lot more confident afterwards."
Rashad?Smiling "When I get nervous, I always picture Billie Dee Williams. Or my uncle. He kind of looks like Billie Dee Williams, now that I think about it..."

~ notification = "Rashad_Day 1_Visualize your role models for a confidence boost during the event_Elisa1"
# notification
~ notification = "Rashad_Day 1_One person to imagine is Billie Dee Williams"
# notification

+I'll be sure to pass that along! Thanks Rashad!
    ->REnd
+Sounds good! I'll go tell Elisa- thanks for all your help.
    ->REnd


===selfTalk2===

Rashad?Smiling "Absolutely! It's proven to up people's confidence. Oh, and tell her that for another confidence boost, she could try visualizing herself as one of her role models!"

+Visualizing herself?
    ->vis2
+Oh interesting!
    ->vis3
    

===REnd===

Rashad?Smiling "No problem! Anyway, I'd better get back to work. Let me know if there's anything else!"

+See ya!
    ->END
