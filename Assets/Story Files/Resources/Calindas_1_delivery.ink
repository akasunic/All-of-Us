
Character looks happy.

* Small talk. -> Chat1
* Lead in to quest. -> QuestIntro

==Chat1==
Character looks happy.

* Small talk. -> Chat2
* Lead in to quest. -> QuestIntro

==Chat2==
Character looks happy.

* Lead in to quest. -> QuestIntro

==QuestIntro==
Character looks neutral.

* Learn more about the quest. -> QuestDetails1
* Accept the quest. -> QuestAcceptance

==QuestDetails1==
Character looks neutral.

* Tell me more. -> QuestDetails2
* Tell me more, but kind of a tangent. -> OptionalQuestDetails1
* Accept the quest. -> QuestAcceptance

==OptionalQuestDetails1==
Character looks neutral.

* Tell me more. -> QuestDetails2
* Accept the quest. -> QuestAcceptance

==QuestDetails2==
Character looks neutral.

* Tell me more, but kind of a tangent. -> OptionalQuestDetails2
* Accept the quest. -> QuestAcceptance

==OptionalQuestDetails2==
Character looks neutral.

* Accept the quest. -> QuestAcceptance
* Accept the quest a different way. -> QuestAcceptance

==QuestAcceptance==
Character looks happy. Quest materials are delivered here.

* Transition to goodbye. -> Goodbye
* A different transition. -> Goodbye

==Goodbye==
Character looks happy.

* Goodbye! ->END
* Goodbye a different way! ->END


