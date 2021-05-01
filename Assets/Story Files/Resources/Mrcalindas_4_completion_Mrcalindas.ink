VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro== 

Mrcalindas?Smiling "Hello {player_name}! I bet you didn't expect to see me here."

* {not TempGoodbye} Hi. Mr. Calindas, I actually love seeing you out and about. How are you?
  -> Chat1
* {not TempGoodbye} Hi. Mr. Calindas, I actually love seeing you. Oh, I think I may have some ideas for you.
  -> ReadyToSolve
* {TempGoodbye} Mr. Calindas, I actually love seeing you out and about. Oh, I have some great news for Brooklyn.
  -> ReadyToSolve

==Chat1==

Mrcalindas?Smiling "I'm actually waiting for my mother to finish her first aerobics class with Mrs. Lee. So, I'm feeling pretty good. How is the block party coming along?"

* Well, I think it's going really great now. We made some new changes to make the party feel more inclusive.
  -> Chat2
* It's going really great now. We made some new changes to make the party feel more inclusive. Speaking of which, do you have a moment?
  -> ReadyToSolve

==Chat2==

Mrcalindas?Neutral "Really? Jessica and I were on the phone last night, trying to make a plan for the day. Has there been some changes? Or did you have some ideas for activities..."

* Well, I found out some neat things, and came up with a plan.
  -> ReadyToSolve
* I talked to Lila and Rashad, and they gave me great advice on how best to make the Block Party fun and inclusive.
  -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Neutral "Oh? We would enjoy knowing how to prepare for the day. What are some suggestions of activities at the Block Party Brooklyn may enjoy? How can we prepare?"

* Open Puzzle interface
  -> PuzzleInterface
* Actually, before I commit, let me check my journal again.
  -> TempGoodbye

==PuzzleInterface==
# turnin

*  -> GoodSolution
*  -> BadSolution
// * Well, since some children may get overstimulated we have a few quiet areas where she can relax with a book or draw if she needs a break. Lila is making sensory slime bags with the children which is a calming but fun activity for all children. We're also goign to make sure there's a map with all the activities so you can plan your day. And if she does get upset, that's okay. We know she's just processing things differently, not misbehaving. -> GoodSolution
// * We wnat to have a sensory activity, and some other areas. We're going to label all the activites with pictures so she can find them. This way we can set up expectations for her, so she knows what do to. We're going to label everything.-> BadSolution

==GoodSolution==

Mrcalindas?Smiling "Oh, wow {player_name} this is a lot of good news. We don't want Brooklyn to feel singled out, so making all of the activities open to all children will make her and us feel good."
Mrcalindas?Smiling "We can sit down and plan how best to support everyone that day, now."

* Awesome! I know it's no unicorn, but I do hope she'll have a great time.
  -> SolvedGoodbye
* Brooklyn is a part of our community, and I'm happy you brought this up with me. I do hope she has a great time.
  -> SolvedGoodbye

==BadSolution==

Mrcalindas?Neutral "Ah. I see. Well, at least everything will be well labeled. I don't know how we are going to help her if she feels overstimulated, though."
Mrcalindas?Neutral "Wish there was something to do about that..."

* Wait, I think we can do more. Let me try that again.
  -> PuzzleInterface
* You're right, Mr. Calindas. There's more I can think of. I'll get right back to you.
  -> TempGoodbye

==SolvedGoodbye==
Mrcalindas?Smiling "I'll tell Brooklyn and Jessica the good news. In the meantime, I'm going to pick up my Mom now."
Mrcalindas?Smiling "I'm pretty sure if I leave her any longer she will end up with another volunteering project! I'll see you at the Block Party!" 

* I'm looking forward to it. Give everyone my love! Bye!
  -> END
* I am not surprised Mother Calindas is as busy as you are. Tell everyone hello for me!
  -> END

==TempGoodbye==

Mrcalindas?Neutral "I understand. This isn't easy to just come up with. Let me know if you have anything. I'm going to go in and meet Mom. See you soon." 

* Don't worry, I'll be back soon.
  -> END
* It really isn't. I just want to make sure everything is right. See you soon!!
  -> END
