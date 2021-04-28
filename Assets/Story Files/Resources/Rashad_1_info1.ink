VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Elisa"
# new_contact

Elisa?Smiling "Hi {player_name} it's good to see you! How's your day going?"

* It's going pretty great. Still trying to get this block party started. How are you?
  -> Chat1
* It's good to see you too! I've been pretty well, you?
  -> Chat1

==Chat1==
Elisa?Smiling "I'm well! I have a lot on my plate getting ready for school still. There's a lot of paperwork to get in order, you know?"

*That sounds pretty stressful.
  -> Chat2
*That's a lot. Is there anything I can do to help?
  -> Explain1

==Chat2==
Elisa?Neutral "It is, a little, bit, honestly. I still have to figure out where to get book expenses from. Ugh, I could use a part time job."

 *Well, I may have a solution to that book money, if you wanna hear it?
  -> Explain1
 *Well, I can't do anything about the stress, but I may have a solution to that book money, if you wanna hear it?
  -> Explain1


==Explain1==
Elisa?Neutral "...Okay? What is it?"

 *There's a part time job opening up at the library I think you'd be amazing for. Do you want to hear more?
  -> Explain2
*The library has a part time opening, and I think you'd be perfect for.
  -> Explain2

==Explain2==
Elisa?Smiling "Perfect for me? Really? I love the library. Can you tell me more?" 

*They're looking for a part time library assistant in the YA section to reshelve books. You can apply through the hiring section on the library's website.
  -> Suggestion1
*The library is hiring a part time worker in the YA section to reshelve books.
  -> Suggestion2

==Suggestion1==
Elisa?Smiling "Do you know if it would be good for a student? I will definately apply, I love YA literature. I spend all my time there already."

~ notification = "Elisa_Day 1_She loves YA Literature_Rashad1"
# notification
~ notification = "Elisa_Day 1_She spends a lot of time already"
# notification

* {not Suggestion2} Yes! It would be. Do you want to know anything else?
  -> Suggestion2
* Yes! It would be. You can apply through the library's website.
  -> Goodbye

==Suggestion2==
Elisa?Smiling "Do you know if I need a reference or how to apply?"

~ notification = "Elisa_Day 1_You will write her a reference_Rashad1"
# notification
~ notification = "Elisa_Day 1_She will use the website to apply_Rashad1"
# notification
~ notification = "Elisa_Day 1_Elisa will apply to the job_Rashad1"
# notification

* Yes, I can write you a reference and you can apply on the library website. Any other questions?
  -> Suggestion1
* I can write you a reference, and you can apply on the website. That's it!
  -> Goodbye

==Goodbye==
Elisa?Smiling "This sounds great, {player_name} I can totally do this. Thanks so much, I really needed to get a part time job,"
Elisa?Smiling "and I was worried about searching and trying to do everything else I have to do. I've got to head to a club meeting, catch you soon!

* Catch you soon!
  ->END
* You'll be awesome! I'll catch you soon!
  ->END
