VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Rashad"
# new_contact
Rashad?Smiling "Hi Lila! What brings you?"

* Hey Rashad! Wanted to check in and see how the library corner set up is going. 
    -> Chat1
* Hi Rashad. How is set up for the party going?
    -> Chat1

==Chat1==
Rashad?Smiling "It's going well, we have some exciting things planned, you'll have to wait and see them at the party this weekend though."

* I am looking forward to it. The library corner has such an impactful presence in this town, I think everyone is going to be happy to see it. 
    -> Chat2
* I'm helping Lila right now with something for this weekend as well. Do you know what kind of equipment is needed for a speaker event? 
    Rashad?Neutral "Yeah, "
    -> Explain1

==Chat2==
Rashad?Smiling "I hope so, and I wish I could keep it up after the event, but there are some other things I still need to put time into before I can get back to that project."
Rashad?Smiling "Maybe eventually it can become a staple again when I have more time."

* I hope I can help you more with that. How is your family doing? 
    -> Chat3
* I think Lila can relate! She actually just found the time to start working on a project she's passionate about. Do you know what equipment a speaker event needs?
    -> Explain1

==Chat3==
Rashad?Smiling "The kids are great, blah blah. ___ is great too, we've been alternating days of more and less time with the kids since we both have slightly flexible jobs,"
Rashad?Smiling "and it's definitely helped the family dynamic as a whole."

* Good to hear. I'm working on a youth initiative right now with Lila actually, and I think I could use your help with equipment for a speaker event. 
    Rashad?Neutral "Hmm, it's been a little while since I set one up, but "
    -> Explain1
* That's great! By the way, do you know if the library has the equipment needed to set up a speaker event?
    Rashad?Neutral "Hmm, it's been a little while since I set one up, but "
    -> Explain1

==Explain1==
Rashad?Neutral "usually these days they need a mic, a speaker set up if the venue doesn't have one, possibly a podium, and a projector to display slides that go along with the talk."
Rashad?Neutral "Where is the event happening?"

* Lila has the community center rec room for the night of the Block Party. Do you know how to set that up?
    -> Explain2
* At the community center. It sounds like you've set up speaker events before?
    -> Explain2

==Explain2==
Rashad?Neutral "Yeah, I used to run speaker events at an outdoor venue in the park."

* Oh! Lila also asked if someone could help her set up activities for the event, and the equipment.
    -> Suggestion1
* Cool! Lila's looking to engage people during this event, so she needs someone to help with ideas for activities.
    -> Suggestion2

==Suggestion1==
Rashad?Smiling "Ok so I might be able to get this equipment from a local rental place I know. One of my librarians could also maybe come and help set up."

~ notification = "Rashad_Day 1_A librarian can help you set up the event, and the local electronics store could rent you the equipment"
# notification

* I'm not sure if she has the budget for that, is there any other way?
    -> Suggestion2
* That would be great! I'll confirm with Lila and get back to you. 
    -> Goodbye

==Suggestion2==
Rashad?Smiling "Well, it shouldn't take too long, so I can stop by and help Lila set up."
Rashad?Smiling "I also can look back in the library's storage area, I might still have that equipment and I'd be more than happy to lend it for a night."

~ notification = "Rashad_Day 1_Rashad can help set up the event, and can lend you equipment from the library_Lila1"
# notification

* Are there any other options?
    -> Suggestion1
* She'll really appreciate this, thank you for offering.
    -> Goodbye

==Goodbye==
Rashad?Smiling "No problem, always glad to help a neighbor out!"

* Thanks again, see you! 
    ->END
* Great, see you later, Rashad!
    ->END
