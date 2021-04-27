Hi.

* Hi! -> Chat1
* Hi a different way! -> Chat1

==Chat1==
Character is happy.

Let's chat more! -> Chat2
I could use your help. -> Explain1

==Chat2==
Character is happy.

Let's chat more! -> Chat3
I could use your help. -> Explain1

==Chat3==
Character is happy.

I could use your help. -> Explain1
I could use your help, a different way. -> Explain1

==Explain1==
Character is neutral.

Here's more information. -> Explain2
Here's more information, a different way. -> Explain2

==Explain2==
Character is neutral.

Segue to suggestion1. -> Suggestion1
Segue to suggestion2. -> Suggestion2

==Suggestion1==
Player gains a piece of information that SOUNDS LIKE it can help with the quest, but isn't quite right. Character is happy.

* {not Suggestion2} Try another way. -> Suggestion2
* That's great! -> Goodbye

==Suggestion2==
Player gains a piece of information that CAN help with the quest. Character is happy.

* {not Suggestion1} Try another way. -> Suggestion1
* That's great! -> Goodbye

==Goodbye==
Character is happy.

* Goodbye. ->END
* Goodbye, a different way. ->END