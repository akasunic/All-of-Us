VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Hello, {player_name}. Can I help you with something?"

+My friend is really stressed out. Do you have any ideas on how to cope with stress?
    ->followUp
    
===followUp===

Mrcalindas?Neutral "Is it general stress? Or stress about something specific?"

+She's a first-gen college student, and she's having trouble finding people to talk to who relate to what she's going through.
    ->firstGenResources

===firstGenResources===

Mrcalindas?Smiling "In that case, she should focus on getting support from her school, or other first-gen students."
Mrcalindas?Smiling "Whether it's a mentor or using school resources,"
Mrcalindas?Smiling "having a place where she can feel connected to the community and like she's not the only one going through this kind of stress will go a long way to improve her mental health."

~ notification = "Mrcalindas_Day 3_Getting connected with your community can help reduce stress_Elisa3"
# notification
~ notification = "Mrcalindas_Day 3_You could get a mentor or use school resources"
# notification

+Where's a good place to look for a mentor?
    ->CalindasMentor
    
===CalindasMentor===

Mrcalindas?Smiling "A good place to look would be around her social group, or else around the school's network."
Mrcalindas?Smiling "So, if she personally knows any upperclassmen or former students who were first-gen, they'd be a great choice to talk to."

~ notification = "Mrcalindas_Day 3_Reach out to upperclassmen and former students for help_Elisa3"
# notification

+Where should she look in the school's network?
    ->schoolResources
    
===schoolResources===

Mrcalindas?Neutral "If she has a teacher she already knows, and they were first gen, they could also be a good mentor for her."
Mrcalindas?Neutral "Otherwise, sometimes colleges actually have specific programs to help first-gen students connect with mentors, or else form a community- do you know if they have that?"

~ notification = "Mrcalindas_Day 3_Reach out to teachers and make use of school programs_Elisa3"
# notification
~ notification = "Mrcalindas_Day 3_Colleges don't always have programs to help first-gen students"
# notification

+I'm not sure, but I can ask Elisa.
    -> CalindasSegueOut
    
===CalindasSegueOut===

Mrcalindas?Smiling "Good idea. No matter what her school offers, though, she should definitely feel free to reach out to other people who were first-gen for support."
Mrcalindas?Smiling "Tell her that it's not a bother, and that people usually love to help other students going through similar experiences to them."

+Thanks Mr. Calindas!
    ->CBye
    
===CBye===

Mrcalindas?Smiling "No problem. Have a good day, {player_name}."

+You too!
    ->END
    