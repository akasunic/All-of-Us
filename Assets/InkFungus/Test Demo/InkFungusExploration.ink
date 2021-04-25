VAR savedKnot = ""
VAR savedFlowchartName = ""
VAR hasStarted = false
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

->intro

=== intro ===
LONDON, 1872
Residence of Monsieur Rashad Williams.
-> london

=== london ===
Monsieur Rashad Williams returned home early from the {Reform Club|Bloomwood Town Hall}, and in a new-fangled steam-carriage, besides!  
~ new_contact = "Rashad"
# new_contact
Rashad?Smiling "I need someone with YA Experience."
~ new_quest = "sample quest info.txt"
# new_quest
Rashad "Passepartout. We are going around the world!"

+ "Around the world, Monsieur?"
    I was utterly astonished. 
    -> astonished
+ [Nod curtly.] -> nod

=== astonished ===
"You are in jest!" I told him in dignified affront. "You make mock of me, Monsieur."
Rashad "I am quite serious."

+ "But of course"
    -> ending


=== nod ===
I nodded curtly, not believing a word of it.
-> ending


=== ending ===
Rashad "We shall circumnavigate the globe within eighty days."
~ notification = "Lila_1_Lila has YA experience._RashadIntroQuest"
# notification
He was quite calm as he proposed this wild scheme.
Rashad "We leave for Paris on the 8:25. In an hour."
-> submit_quest_test


=== submit_quest_test ===
Rashad "Back already? What can I do for you?"
+ "I think I found someone with YA experience."
    -> open_turnin_scene
+ "Nothing right now."
    Rashad "Oh. Well, I don't have anything for you either!"
    -> END

=== open_turnin_scene ===
# turnin
-> END

# progress 1