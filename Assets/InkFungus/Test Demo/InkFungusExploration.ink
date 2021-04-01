VAR savedKnot = ""
VAR savedFlowchartName = ""
VAR hasStarted = false
VAR notification = ""

->intro

=== intro ===
LONDON, 1872
Residence of Monsieur Phileas Fogg.
-> london

=== london ===
Monsieur Phileas Fogg returned home early from the {Reform Club|Bloomwood Town Hall}, and in a new-fangled steam-carriage, besides!  
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
He was quite calm as he proposed this wild scheme.
~ notification = "Rashad_Monday_Rashad needs you to find someone with YA experience."
# notification
Rashad "We leave for Paris on the 8:25. In an hour." # progress 1
-> END
