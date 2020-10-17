Software Engineering
====================

SOLID Principles
----------------

 - Single Responsibility principle
 - Open-Closed principle
 - Liskov Substitution principle
 - Interface Segregation principle
 - Dependency Inversion principle

The SOLID Principles were first formulated by Rober C. (Uncle) Martin at 90s.
They are good practises, but they have been proven correct again and again for
many years.

For more detailed descriptions on these principles, please consult the
[series of articles][solid].

[solid]:	https://codeburst.io/understanding-solid-principles-dependency-injection-d570c15560ab


### Single Responsibility principle ###

 - Every module or class should have responsibility over a single part of the
   functionality provided by the software, and that responsibility should be
   entirely encapsulated by the class.

Or in other, simpler words:

 - A class or module should have one, and only one, reason to be changed.


### Open-Closed principle ###

 - Software entities (classes, modules, functions, etc.) should be open for
   extension, but closed for modification.


### Liskov Substitution principle ###

 - Objects should be replaceable with instances of their subtypes without
   altering the correctness of that program.


### Interface Segregation principle ###

 - Clients should not be forced to depend on methods that they do not use.


### Dependency Inversion principle ###

 - High-level modules should not depend upon low-level modules.
   Both should depend upon abstractions.
 - Abstractions should not depend upon details.  Details should depend upon
   abstractions.


Test-Driven Development
-----------------------

Also abbreviated as TDD.

Some terms I've found at a very nice article by
[Uncle Bob](http://www.8thlight.com/team/uncle-bob),
[The Little Mocker](http://blog.8thlight.com/uncle-bob/2014/05/14/TheLittleMocker.html):

Interface
   A simple interface to work with.

   ```java
   interface Authorizer {
      public Boolean authorize(String username, String password);
   }
   ```

Test Double
   Also called *Dummy*.  You pass it into something (usually a test) when you
   don't care how it's used.  It is better to return `null` so that nobody tries
   to accidentally use it.

   ```java
   public class DummyAuthorizer implements Authorizer {
      public Boolean authorize(String username, String password) {
	 return null;
      }
   }

   public class System {
      public System(Authorizer authorizer) {
	 this.authorizer = authorizer;
      }

      public int loginCount() {
	 //returns number of logged in users.
      }
   }

   @Test
   public void newlyCreatedSystem_hasNoLoggedInUsers() {
      System system = new System(new DummyAuthorizer());
      assertThat(system.loginCount(), is(0));
   }
   ```

Stub
   A `Stub` is ...
   It returns `true`, since it exposes functionality already tested by other tests cases.

   ```java
   public class AcceptingAuthorizerStub implements Authorizer {
      public Boolean authorize(String username, String password) {
	 return true;
      }
   }
   ```

Spy
   Use a *Spy* when you want to be sure that the `authorize` method was called by your system.

   ```java
   public class AcceptingAuthorizerSpy implements Authorizer {
      public boolean authorizeWasCalled = false;

      public Boolean authorize(String username, String password) {
	 authorizeWasCalled = true;
	 return true;
      }
   }
   ```

Mock
   The *Mock* is testing **behavior**.  It is not so interested in the return values of functions.
   It's more interested in what function were called, with what arguments, when, and how often.

   ```java
   public class AcceptingAuthorizerVerificationMock implements Authorizer {
      public boolean authorizeWasCalled = false;

      public Boolean authorize(String username, String password) {
	 authorizeWasCalled = true;
	 return true;
      }

      public boolean verify() {
	 return authorizedWasCalled;
      }
   }
   ```

Fake
   A `Fake` is a kind of simulator.  It has business behavior.
   You can drive a fake to behave in different ways by giving it different data.

   ```java
   public class AcceptingAuthorizerFake implements Authorizer {
      public Boolean authorize(String username, String password) {
	 return username.equals("Bob");
      }
  }
  ```


Behavior-Driven Development
---------------------------
Abbreviated as BDD.

In an interesting [article](http://blog.codeship.io/2013/04/22/from-tdd-to-bdd.html)
I've read about BDD, I have to note some examples of usage scenarios.

   Story: Returns go to stock
   In order to keep track of stock
   As a store owner I want to add items back to stock when they're returned

   Scenario 1: Refunded items should be returned to stock
   Given a customer previously bought a black sweater from me
   And I currently have three black sweaters left in stock
   When he returns the sweater for a refund
   Then I should have four black sweaters in stock

   Scenario 2: Replaced items should be returned to stock
   Given that a customer buys a blue garment
   And I have two blue garments in stock
   And three black garments in stock.
   When he returns the garment for a replacement in black,
   Then I should have three blue garments in stock
   And two black garments in stock

There are tools like [Cucumber](http://cukes.info/) that enable you to test
your natural language features automatically.  Cucumber defines a new language,
which is more suitable for BDD, and provides the tools for validating the
specified behaviors.  It is implemented in Ruby.

The language used to describe BDD scenarios is called
[Gherkin](https://cucumber.io/docs/gherkin/) and can support many clauses.
There is an online company that offers some BDD-related courses at
[Cucumber | School](https://school.cucumber.io/).


Testing
-------

In this unit, we'll tell you about the CORRECT way. You can read more about them
in the "Pragmatic Unit Testing in Java 8 with JUnit" book, from Jeff Langr, with
Andy Hunt & Dave Thomas, edited by the Pragmatic Programmers, edition of 2015.

The _CORRECT_ way stands for:
Conformance, Ordering, Range, Reference, Existence, Cardinality, and Time:

 - _Conformance_:
   Many inputs should conform to a specific format. For example, an e-mail
   address has a name@domain format. What happens to our system if the e-mail is
   invalid, e.g, no name, or no domain, or invalid domain?

 - _Ordering_:
   The input and output may depend on some ordering criteria.  For example, our
   system expects the user to input all invoices for reimbursement in the
   chronological order they happened. What happens if the user makes a mistake
   and does not send it in the right order? Or, our system may need to return
   the list of best players, according to the number of points they made in the
   last game, from the best to the worst. Does the system return in the right order?

 - _Range_:
   The inputs should be within a defined limit. For example, the user needs to
   input her age. What happens if she passes a negative number? What happens if
   she passes 200?

 - _Reference_:
   The inputs and behaviour under test may require a previous state.
   For example, in a web store, for an order to be placed, the user needs to
   have an account first. What happens if the user tried to place an order
   without an account?

 - _Existence_:
   The inputs "may not exist". What happens if someone passes a null or an empty string?

 - _Cardinality_:
   The famous off-by-one error. It happens when we forget to "iterate the last
   item" in our algorithm. For example, if you should return the number of
   elements between m and n (inclusive), the intuitive answer would be (n-m),
   whereas the right answer is (n-m+1). In practice, this often happens in
   iterative loops: developers often iterate one time too few. You can read
   about the fencepost error in the Wikipedia. As a tip, what happens to your
   system when it has zero, one, or many values to iterate?

 - _Time_:
   Your input may be about date/time. What happens to your system if the input
   was done by a person in a place that does not have Daylight Saving Time? Does
   the system work for someone in New York (GMT-5) as well as for someone in
   Amsterdam (GMT+1)?

These are generic tips that may fit in any software system. Take them into
consideration when thinking about boundary and corner cases.


Code Reviews
------------

*Code Reviews* look like a very compelling technique to eliminate problems and
bugs between a software team.  Here are a couple of tools I found relating to
*Code Reviews*:

 - [Review Board](https://www.reviewboard.org/)
 - [Gerrit](https://code.google.com/p/gerrit/)


Refactorings
------------

There is a huge [catalog of refactorings][ref-cataglog].
Here I keep a short reference of the official names of these refactorings.
The bible for these terms and for refactorings in general is the book:

   "Refactoring: Improving the Design of Existing Code",  
   by Martin Fowler

[ref-catalog]:		http://refactoring.com/catalog/

Extract Superclass:
   Place common functions under the same class hierarchy.

Extract Method/Function:
   Place block of code in separate function.

Replace Method/Function with Method Object:
   Create a separate class that will be initialized with temporary values.
   Call a function using this object.

Introduce Parameter Object:
   Place related function parameters in separate class.  Use this class to
   pass the parameters to the function.

Replace Conditional with Polymorphism:
   Replace switch/if statements with class hierarchies of virtual functions.

Replace Nested Conditional with Guard Clauses:
   Extract common expressions from if statements.


Logging
-------

I found a useful article in [Google Testing Blog][log-article], which I need to
keep a reference to, but also extract some useful points while adding logging
statements in the code:

### Good things to log ###

 - Important startup configuration
 - Errors/Warnings
 - Changes to persistent data
 - Requests/Responses between major systems
 - Significant state changes
 - User interactions
 - Calls with a known risk of failure
 - Waits on conditions that could take measurable time to satisfy
 - Periodic progress during long-running tasks
 - Significant branch points of logic and conditions that led to the branch
 - Summaries of processing steps/events from high-level functions

### Bad things to log ###

 - Function entry
 - Data within a loop
 - Content of large messages or files
 - Benign errors
 - Repetitive errors

[log-article]:	https://testing.googleblog.com/2013/06/optimal-logging.html


Fuzzing
-------

 - [Curated List on Fuzzing](https://github.com/secfigo/Awesome-Fuzzing)


RESTful API
-----------

 - [Best Practices for Designing a Pragmatic RESTful API][api-post]

[api-post](http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)
