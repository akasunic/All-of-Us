VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Rashad?Smiling "Hey there {player_name}. How are you?"
* Oh you know! Enjoying the day, how about yourself?
  -> Chat1
* Pretty good, what are you up to?
-> Chat1


==Chat1==
Rashad?Neutral "Not much. I’m revising a couple of job listings, but otherwise it’s a pretty calm day around here. I think I’m going to bring some books home for the kids."

* Oh, cool. Good luck hiring! Hey, do you have a minute?
-> Explain1
* How is your family doing?
 -> Chat2

==Chat2==
Rashad?Smiling "They’re great! My kids are the best. For that matter, so is Cheryl! Our work schedules have been slightly more flexible so we’ve been spending a lot more time with the kids."
Rashad?Smiling "I’m so glad to spend time with them. Sometimes we even bring them here to some of our youth events."

* What sort of events does the library host?
  -> Chat3
* Hey, I’m working on an initiative with Lila and I think she could use your help.
  -> Explain1

==Chat3==
Rashad?Smiling "There are a lot of things we do! We host some storytime events where one of the librarians reads to them. Arts and crafts have been a huge hit lately!"
Rashad?Smiling "Plus all our classes and workshops - sewing, technology, gardening. We have book clubs too!"
* Hey speaking of events, that reminds me of something. Do you have a minute?"
  -> Explain1

==Explain1==
Rashad?Neutral "What’s going on?"
* I’m helping Lila with a project. Do you know what equipment is needed for a speaker event?"
  -> Explain2
* Lila needs some help. Do you have any experience with event hosting?
  -> Explain2

==Explain2==
Rashad?Neutral "It depends what they want, but usually I would suggest a sound system suited to their space, a couple of microphones, a projector and screen to display a slideshow, and a podium if wanted."
Rashad?Neutral "Venues sometimes have equipment already setup. Where is Lila hosting her event?"
* At the Community Center. Have you hosted events like this before?
  -> Explain3

==Explain3==
Rashad?Smiling "Yeah! The library hosts events here, the park and other places in the community. It’s a lot of fun!"
* That’s so awesome! Lila is looking for someone to help her set up the equipment.
-> Suggestion1
* That’s so cool! Lila is looking for people to help set up some activities.
-> Suggestion1


==Suggestion1==
~ notification = "Rashad_Day 1_Lila should look into grants that might help fund the purchase of equipment for the support group_Lila1-1"
# notification Rashad_Day 1_Lila should look into grants that might help fund the purchase of equipment for the support group_Lila1-1 


Rashad?Smiling "If this is going to be a regular thing, the Community Center might invest in equipment so they don't have to borrow or rent every time." 
Rashad?Smiling "It would also mean they can set up the equipment in the space where it's most likely to be used and leave it alone between events." 
Rashad?Smiling "There might be some community grants available to help finance a purchase. I'm happy to use some of my librarian magic to help Lila look into funding sources." 

*I hadn't thought of that, Rashad! What a great idea.
  -> Suggestion2
* I'm sure Lila would appreciate the help!
  -> Suggestion2

==Suggestion2==
~ notification = "Rashad_Day 1_Look within your community for resources to support your project; what you need might already be available at low or no cost_Lila1-2"
# notification Rashad_Day 1_Look within your community for resources to support your project; what you need might already be available at low or no cost_Lila1-2 

Rashad?Smiling "It can take some time to get the paperwork moving for funding, so she might need to borrow equipment for the first event."
Rashad?Smiling "I think a community is stronger when the various institutions work together; I can pull our extra equipment out of storage and set everything up for her." 
Rashad?Smiling "You did the right thing by heading over here - Mr. Rogers says to look for the helpers, and I'm ready to be a helper. Building community support starts with looking for the support structures that already exist."
Rashad?Smiling "It's been a while since I worked a show, but she has the library's backing. I'll get her setup and run a/v for her while she gets this thing started." 
Rashad?Smiling "Then, if she wants the help, I can pitch in for future events until someone in the group is ready to take over." 

* Thank you so much, Rashas. This will really mean a lot to Lila!
  -> Goodbye


==Goodbye==
Rashad?Smiling "I’m happy to help! Helping a neighbor out is always a joy. Good luck, Adventurer!"
* You’re the best. Later, Rashad!
-> END
* Thanks again, Rashad!
-> END