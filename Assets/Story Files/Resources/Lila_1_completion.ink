Character is happy.

* {not TempGoodbye} Let's chat. -> Chat1
* {not TempGoodbye} I can help you. -> ReadyToSolve
* {TempGoodbye} I can help you, with reference to our past conversation. -> ReadyToSolve

==Chat1==
Character is neutral.

* Let's chat more. -> Chat2
* I can help you. -> ReadyToSolve

==Chat2==
Character is neutral.

* I can help you. -> ReadyToSolve
* I can help you, a different way. -> ReadyToSolve

==ReadyToSolve==
Character is neutral. 

* Start puzzle interface. -> PuzzleInterface
* Actually, I'm not ready. -> TempGoodbye

==PuzzleInterface==
Character is neutral. Puzzle interface pops up.

* They picked a solution marked good. -> GoodSolution
* They picked a solution marked bad. -> BadSolution

==GoodSolution==
Character is happy.

* Yay! -> SolvedGoodbye
* Yay a different way! -> SolvedGoodbye

==BadSolution==
Character is neutral.

* Try again? -> PuzzleInterface
* Actually, I'm not ready. -> TempGoodbye

==SolvedGoodbye==
Character is happy.

* Goodbye! -> END
* Goodbye a different way! -> END

==TempGoodbye==
Character is neutral.

* Ok, see you later! -> END
* Ok, see you later a different way! -> END