Test-Driven Development
=======================

Terms
-----

The following definitions are extracted from the article,
[Just a Whole Bunch of Different Tests][test-article].

[test-article]:	https://www.hillelwayne.com/post/a-bunch-of-tests/

### Auto-manual Tests

<dl>
   <dt>Unit Tests, Regression Tests, Mock Tests
   <dt>Integration Tests, Contract Tests, Boundary Tests
   <dt>Acceptance Tests, End-to-End Tests, Feature Tests
   <dt>Feature Tests, Gherkin Tests, Cucumber Tests, Behavior Tests
   <dt>Diff Tests, Snapshot Tests, Record Tests, Comparison Tests
   <dt>Parameterized Tests

### Generative Tests

<dl>
   <dt>Property Tests, Property-based Tests, PBT, Quickcheck, Invariant Tests
   <dt>Fuzz Tests
   <dt>Transition System Tests, Stateful Tests, Rules-based Stateful Tests,
   Model-based Tests

### Miscellaneous Tests

<dl>
   <dt>Mutation Tests
   <dt>Doctests


Some terms I've found at a very nice article by [Uncle Bob][bob],
[The Little Mocker][mocker].  Also, a nice presentation of the differences
between a *Stub* and a *Mock* can be found in the article,
[Meaningful Test Doubles][doubles].

[bob]: http://www.8thlight.com/team/uncle-bob
[mocker]: http://blog.8thlight.com/uncle-bob/2014/05/14/TheLittleMocker.html
[doubles]: http://mekhami.com/unit/testing/doubles/2015/07/30/Meaningful-Test-Doubles.html

In short:

 - *Test Double*: official name of *mocks* used under tests.
   The rest terms are kinds of *Doubles*.
 - *Dummy*: Do nothing, use it only to make test run, not actually used.
 - *Stub*: Let system initialize for tests to start on.  Specialized to *Dummy*.
 - *Spy*: Monitor usage of external system.
 - *Mock*: A specialized *Spy* with the assertion in place.
 - *Fake*: A specialized *Stub* with some business login in it (*Simulator*).

As a conclusion, we can say that a *Mock* is a kind of *Spy*, a *Spy* is a kind of *Stub*,
and a *Stub* is a kind of *Dummy*.  But a *Fake* isn't a kind of any of them.
It's a completely different kind of *Test Double*.

Examples
--------

### Interface

```java
   interface Authorizer {
      public Boolean authorize(String username, String password);
   }
```

### Dummy

   You pass it into something (usually a test) when you
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

### Stub

   A `Stub` is to test **state**.
   It should return meaningful values to help us test the object-under-test,
   by isolating it from external services.

   It returns `true`, since it exposes functionality already tested by other tests cases.

```java
   public class AcceptingAuthorizerStub implements Authorizer {
      public Boolean authorize(String username, String password) {
         return true;
      }
   }
```

### Spy

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

### Mock

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

### Fake

   A `Fake` is a kind of simulator.  It has business behavior.
   You can drive a fake to behave in different ways by giving it different data.

```java
   public class AcceptingAuthorizerFake implements Authorizer {
      public Boolean authorize(String username, String password) {
         return username.equals("Bob");
      }
  }
```
