VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Lila?Smiling "Hi {player_name}! What's up?"

+My friend Elisa is really stressed out and I'm trying to get her some help. Do you know any former first-gen students she could talk to?
    -> Lilamentor

===Lilamentor===

~ notification = "Lila_Day 3_Someone brand new might not be the best mentor"
# notification Lila_Day 3_Someone brand new might not be the best mentor
~ notification = "Lila_Day 3_Reach out to upperclassmen and former students for help_Elisa3"
# notification Lila_Day 3_Reach out to upperclassmen and former students for help_Elisa3

Lila?Neutral "Hmm, I don't know anyone off the top of my head, but I can keep an eye out for you. Elisa could reach out to any first-gen upperclassmen or former students that she knows."
Lila?Neutral "It'll also probably be more comfortable for Elisa to connect with them than it would be to meet someone brand new."

+I'll let her know!
    -> institutionalConnections
    
===institutionalConnections===

~ notification = "Lila_Day 3_Reach out to teachers and make use of school programs_Elisa3"
# notification Lila_Day 3_Reach out to teachers and make use of school programs_Elisa3
~ notification = "Lila_Day 3_Colleges don't always have programs to help first-gen students"
# notification Lila_Day 3_Colleges don't always have programs to help first-gen students

Lila?Smiling "You can also tell her that she could reach out to any first generation teachers she knows at her school for advice. I'm sure they'd love to help her."
Lila?Smiling "Or, if nothing else, sometimes colleges actually have specific programs to help first-gen students form a community- do you know if they have that?"

+I'm not sure, but I can ask Elisa.
    -> segueOut

===segueOut===

~ notification = "Lila_Day 3_Getting connected with your community can help reduce stress_Elisa3"
# notification Lila_Day 3_Getting connected with your community can help reduce stress_Elisa3
~ notification = "Lila_Day 3_Try to get support in whatever way you can"
# notification Lila_Day 3_Try to get support in whatever way you can

Lila?Smiling "Awesome! Yeah, the big thing is just for Elisa to get some more support in whatever way she can."
Lila?Smiling "Whether it's a mentor or using school resources,"
Lila?Smiling "having a place where she can feel connected to the community and like she's not alone in her stress will go a long way to improve her mental health."

+Thanks Lila! 
    ->bye
    
===bye===

Lila?Smiling "No problem! Good luck with the mentor-finding!"

+See ya!
    ->END