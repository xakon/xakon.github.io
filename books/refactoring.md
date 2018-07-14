Refactoring
===========

Refactoring:  Improving the Design of Existing Code  
Martin Fowler  
Addison-Wesley, 1999  
0-201-48567-2


List of Soundbites
------------------

Page  |
------+--------------------
7	When you find you have to add a feature to a program, and the program's
	code is not structured in a convenient way to add the feature, first
	refactor the program to make it easy to add the feature, then add the
	feature.

8	Before you start refactoring, check that you have a solid suite of
	tests.  These tests must be self-checking.

13	Refactoring changes the programs in small steps.  If you make a mistake,
	it is easy to find the bug.

15	Any fool can write code that a computer can understand.
	Good programmers write code that humans can understand.

53	*Refactoring* (noun):  a change made to the internal structure of
	software to make it easier to understand and cheaper to modify without
	changing its observable behavior of the software.

54	*Refactor* (verb):  to restructure software by applying a series of
	refactorings without changing the observable behavior of the software.

58	Three strikes and you refactor.

65	Don't publish interfaces prematurely.
	Modify your code ownership policies to smooth refactoring.

88	When you feel the need to write a comment, first try to refactor the
	code so that any comment becomes superfluous.

90	Make sure all tests are fully automatic and that they check their own
	results.

90	A suite of tests is a powerful bug detector that decapitates the time it
	takes to find bugs.

94	Run your tests frequently.  Localize tests whenever you compile---every
	test at least every day.

97	When you get a bug report, start by writing a unit test that exposes
	the bug.

98	It is better to write and run incomplete tests than not to run
	complete tests.

99	Think of the boundary conditions under which things might go wrong and
	concentrate your tests there.

100	Don't forget to test that exceptions are raised when things are expected
	to go wrong.

101	Don't let the fear that testing can't catch all bugs stop you from
	writing the tests that will catch most bugs.
