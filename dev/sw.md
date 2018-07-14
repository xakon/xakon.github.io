Software Engineering
====================

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


Fuzzing
-------

 - [Curated List on Fuzzing](https://github.com/secfigo/Awesome-Fuzzing)


RESTful API
-----------

 - [Best Practices for Designing a Pragmatic RESTful API][api-post]

[api-post](http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)