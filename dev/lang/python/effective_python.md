Effective Python
================

Some advices from the book "Effective Python", so that I can refer back to them
in the future and revise their content.

## Item 1: Know Which Version of Python You're Using

 - There are two major versions of Python still in active use:  Python 2 and Python 3.
 - There are multiple popular runtimes for Python:  CPython, Jython, IronPython, PyPy, etc.
 - Be sure that the command-line for running Python on your system is the version you
   expect it to be.
 - Prefer Python 3 for your next project because that is the primary focus of the Python
   community.

## Item 2: Follow the PEP 8 Style Guide

 - Sharing a common style with the larger Python community facilitates collaboration
   with others.
 - Using a consistent style makes it easier to modify your own code later.

## Item 3: Know the Difference Between `bytes`, `str`, and `unicode`

 - In Python 3, `bytes` contains sequences of 8-bit values, `str` contains sequences of
   Unicode characters.  `bytes` and `str` instances can't be used together with operators
   (like `>` or `+`).
 - In Python 2, `str` contains sequences of 8-bit values, `unicode` contains sequences of
   Unicode characters.  `str` and `unicode` *can* be used together with operators if the
   `str` only contains 7-bit ASCII characters.
 - Use helper functions to ensure that the inputs you operate on are the type of character
   sequence you expect (8-bit values, UTF-8 encoded characters, Unicode characters, etc.).
 - If you want to read or write binary data to/from a file, always open the file using a
   binary mode (like `'rb'` or `'wb'`).

## Item 4: Write Helper Functions Instead of Complex Expressions

 - Python's syntax makes it all too easy to write single-line expressions that are
   overly complicated and difficult to read.
 - Move complex expressions into helper functions, especially if you need to use the
   same logic repeatedly.
 - The `if/else` expression provides a more readable alternative to using Boolean operators
   like `or` and `and` in expressions.

## Item 5: Know How to Slice Sequences

 - Avoid being verbose:  Don't supply `0` for the `start` index or the length of the sequence
   for the `end` index.
 - Slicing is forgiving of `start` or `end` indexes that are out of bounds, making it easy
   to express slices on the front or back boundaries of a sequence (like `a[:20]` or `a[-20:]`).
 - Assigning to a `list` slice will replace that range in the original sequence with what's
   referenced even if their lengths are different.

## Item 6: Avoid Using `start`, `end`, and `stride` in a Single Slice

 - Specifying `start`, `end`, and `stride` in a slice can be extremely confusing.
 - Prefer using positive `stride` values in slices without `start` or `end` indexes.
   Avoid negative `stride` values if possible.
 - Avoid using `start`, `end`, and `stride` together in a single slice.
   If you need all three parameters, consider doing two assignments (one to slice,
   another to stride) or using `islice` from the `itertools` built-in module.

## Item 7: Use List Comprehensions instead of `map` and `filter`

 - List comprehensions are clearer than the `map` and `filter` built-in functions
   because they don't require extra `lambda` expressions.
 - List comprehensions allow you to easily skip items from the input list,
   a behavior `map` doesn't support without the help from `filter`.
 - Dictionaries and sets also support comprehension expressions.

## Item 8: Avoid More Than Two Expressions in List Comprehensions

 - List comprehensions support multiple levels of loops and multiple conditions per loop level.
 - List comprehensions with more than two expressions are very difficult to read and should
   be avoided.

## Item 9: Consider Generator Expressions for Large Comprehensions

 - List comprehensions can cause problems for large inputs by using too much memory.
 - Generator expressions avoid memory issues by producing outputs one at a time
   as an iterator.
 - Generator expressions can be composed by passing the iterator from one generator
   expression into the `for` subexpression of another.
 - Generator expressions execute very quickly when chained together.

## Item 10: Prefer `enumerate` Over `range`

 - `enumerate` provides concise syntax for looping over an iterator and getting the
   index of each item from the iterator as you go.
 - Prefer `enumerate` instead of looping over a range and indexing into a sequence.
 - You can supply a second parameter to `enumerate` to specify the number from which
   to begin counting (zero is the default).

## Item 11: Use `zip` to Process Iterators in Parallel

 - The `zip` built-in function can be used to iterate over multiple iterators in parallel.
 - In Python 3, `zip` is a lazy generator that produces tuples.  In Python 2, `zip` returns
   the full result as a list of tuples.
 - `zip` truncates its output silently if you suplly it with iterators of different lengths.
 - The `zip_longest` function from the `itertools` built-in module lets you iterate over
   multiple iterators in parallel regardless of their lengths

## Item 12: Avoid `else` Blocks After `for` and `while` loops

 - Python has special syntax that allows `else` blocks to immediately follow `for` and
   `while` loop interior blocks.
 - The `else` block after a loop only runs if the loop body did not encounter a `break`
   statement.
 - Avoid using `else` blocks after loops because their behavior isn't intuitive and can be
   confusing.

## Item 13: Take Advantage of Each Block in `try/except/else/finally`

 - The `try/finally` compound statement lets you run cleanup code regardless of whether
   exceptions were raised in the `try` block.
 - The `else` block helps you minimize the amount of code in `try` blocks and visually
   distinguish the success case from the `try/except` blocks.
 - An `else` block can be used to perform additional actions after a successful `try`
   block but before common cleanup in a `finally` block.

## Item 14: Prefer Exceptions to Returning `None`

 - Functions that return `None` to indicate special meaning are error prone because
   `None` and other values (e.g., zero, the empty string) all evaluate to `False`
   in conditional expressions.
 - Raise exceptions to indicate special situations instead of returning `None`.
   Expect the calling code to handle exceptions properly when they're documented.

## Item 15: Know How Closures Interact with Variable Scope

 - Closure functions can refer to variables from any of the scopes in which they were defined.
 - By default, closures can't affect enclosing scopes by assigning variables.
 - In Python 3, use the `nonlocal` statement to indicate when a closure can modify a variable
   in its enclosing scopes.
 - In Python 2, use a mutable value (like a single-item list) to work around the lack of the
   `nonlocal` statement.
 - Avoid using `nonlocal` statements for anything beyond simple functions.

## Item 16: Consider Generators Instead of Returning Lists

 - Usning generators can be clearer than the alternative of returning lists of accumulated
   results.
 - The iterator returned by a generator produces the set of values passed to `yield`
   expressions within the generator function's body.
 - Generators can produce a sequence of outputs for arbitrarily large inputs because their
   working memory doesn't include all inputs and outputs.

## Item 17: Be Defensive When Iterating Over Arguments

 - Beware of functions that iterate over input arguments multiple times.  If these arguments
   are iterators, you may see strange behavior and missing values.
 - Python's iterator protocol defines how containers and iterators interact with the `iter`
   and `next` built-in functions, `for` loops, and related expressions.
 - You can easily define your own iterable container type by implementing the `__iter__` method
   as a generator.
 - You can detect that a value is an iterator (instead of a container) if calling `iter` on it
   twice produces the same result, which can then be progressed with the `next` built-in
   function.

## Item 18: Reduce Visual Noise with Variable Positional Arguments

 - Functions can accept a variable number of positional arguments by using `*args` in the
   `def` statement.
 - You can use the items from a sequence as the positional arguments for a function with
   the `*` operator.
 - Using the `*` operator with a generator may cause your program to run out of memory
   and crash.
 - Adding new positional parameters to functions that accept `*args` can introduce
   hard-to-find bugs.

## Item 19: Provide Optional Behavior with Keyword Arguments

 - Function arguments can be specified by position or by keyword.
 - Keywords make it clear what the purpose of each argument is when it would be confusing
   with only positional arguments.
 - Keyword arguments with default values make it easy to add new behaviors to a function,
   especially when the function has existing callers.
 - Optional keyword arguments should always be passed by keyword instead of by position.

## Item 20: Use `None` and Docstrings to Specify Dynamic Default Arguments

 - Default arguments are only evaluated once:  during function definition at module load time.
   This can cause odd behaviors for dynamic values (like `{}` and `[]`).
 - Use `None` as the default value for keyword arguments that have a dynamic value.
   Document the actual default behavior in the function's docstring.

## Item 21: Enforce Clarity with keyword-Only Arguments

 - Keyword arguments make the intention of a function call more clear.
 - use keyword-only arguments to force callers to supply keyword arguments for potentially
   confusing functions, especially those that accept multiple Boolean flags.
 - Python 3 supports explicit syntax for keyword-only arguments in functions.
 - Python 2 can emulate keyword-only arguments for functions by using `**kwargs` and
   manually raising `TypeError` exceptions.

## Item 22: Prefer Helper Classes Over Bookkeeping with Dictionaries and Tuples

 - Avoid making dictionaries with values that are other dictionaries or long tuples.
 - Use `namedtuple` for lightweight, immutable data containers before you need the
   flexibility of a full class.
 - Move your bookkeeping code to use multiple helper classes when your internal state
   dictionaries get complicated.

## Item 23: Accept Functions for Simple Interfaces Instead of Classes

 - Instead of defining and instantiating classes, functions are often all you need for
   simple interfaces between components in Python.
 - References to functions and methods in Python are first class, meaning they can be
   used in expressions like any other type.
 - The `__call__` special method enables instances of a class to be called like plain
   Python functions.
 - When you need a function to maintain state, consider defining a class that provides
   the `__call__` method instead of defining a stateful closure.

## Item 24: Use `@classmethod` Polymorphism to Construct Objects Generically

 - Python only supports a single constructor per class, the `__init__` method.
 - Use `@classmethod` to define alternative constructors for your classes.
 - Use class method polymorphism to provide generic ways to build and connect
   concrete subclasses.

## Item 25: Initialize Parent Classes with `super`

 - Python's standard method resolution order (MRO) solves the problems of superclass
   initialization order and diamond inheritance.
 - Always use the `super` built-in function to initialize parent classes.

## Item 26: Use Multiple Inheritance Only for Mix-in Utility Classes

 - Avoid using multiple inheritance if mix-in classes can achieve the same outcome.
 - Use pluggable behaviors at the instance level to provide per-class customization
   when mix-in classes may require it.
 - Compose mix-ins to create complex functionality from single behaviors.

## Item 27: Prefer Public Attributes Over Private Ones

 - Private attributes aren't rigorously enforced by the Python compiler.
 - Plan from the beginning to allow subclasses to do more with your internal APIs
   and attributes instead of locking them out by default.
 - Use documentation of protected fields to guide subclasses instead of trying to
   force access control with private attributes.
 - Only consider using private attributes to avoid naming conflicts with subclasses
   that are out of your control.

## Item 28: Inherit from `collections.abc` for Custom Container Types

 - Inherit directly from Python's container types (like `list` or `dict`) for simple
   use cases.
 - Beware of the large number of methods required to implement custom container types
   correctly.
 - Have your custom container types inherit from the interfaces defined in `collections.abc`
   to ensure that your classes match required interfaces and behaviors.

## Item 29: Use Plain Attributes Instead of Get and Set Methods

 - Define new class interfaces using simple public attributes, and avoid set and get methods.
 - Use `@property` to define special behavior when attributes are accessed on your objects,
   if necessary.
 - Follow the rule of least surprise and avoid weird side effects in your `@property` methods.

## Item 30: Consider `@property` Instead of Refactoring Attributes

 - Use `@property` to give existing instance attributes new functionality.
 - Make incremental progress toward better data models by using `@property`.
 - Consider refactoring a class and all call sites when you find yourself using
   `@property` too heavily.

## Item 31: Use Descriptors for Reusable `@property` Methods

- Reuse the behavior and validation of `@property` methods by defining your own
   descriptor classes.
 - Use `WeakKeyDictionary` to ensure that your descriptor classes don't cause memory leaks.
 - Don't get bogged down trying to understand exactly how `__getattribute__` uses the
   descriptor protocol for getting and setting attributes.

## Item 32: Use `__getattr`, `__getattribute__`, and `_setattr__` for Lazy Attributes

 - Use `__getattr__` and `__setattr__` to lazily load and save attributes for an object.
 - Understand that `__getattr__` only gets called once when accessing a missing attribute,
   whereas `__getattribute__` gets called every time an attribute is accessed.
 - Avoid infinite recursion in `__getattribute__` and `__setattr__` by using methods from
   `super()` (i.e., the `object` class) to access instance attributes directly.

## Item 33: Validate Subclasses with Metaclasses

 - Use metaclasses to ensure that subclasses are well formed at the time they are defined,
   before objects of their type are constructed.
 - Metaclasses have slightly different syntax in Python 2 vs. Python 3.
 - The `__new__` method of metaclasses is run after the `class` statement's entire body
   has been processed.

## Item 34: Register Class Existence with Metaclasses

 - Class registration is a helpful pattern for building modular Python programs.
 - Metaclasses let you run registration code automatically each time your base class
   is subclassed in a program.
 - Using metaclasses for class registration avoids errors by ensuring that you never
   miss a registration call.

## Item 35: Annotate Class Attributes with Metaclasses

 - Metaclasses enable you to modify a class's attributes before the class is fully defined.
 - Descriptors and metaclasses make a powerful combination for declarative behavior and
   runtime introspection.
 - You can avoid both memory leaks and the `weakref` module by using metaclasses along
   with descriptors.

## Item 36: Use `subprocess` to Manage Child Processes

 - Use the `subprocess` module to run child processes and manage their input and output streams.
 - Child processes run in parallel with the Python interpreter, enabling you to maximize
   your CPU usage.
 - Use the `timeout` parameter with `communicate` to avoid deadlocks and hanging child processes.

## Item 37: Use Threads for Blocking I/O, Avoid for Parallelism

 - Python threads can't run bytecode in parallel on multiple CPU cores because of the
   Global Interpreter Lock (GIL).
 - Python threads are still useful despite the GIL because they provide an easy way to do
   multiple things at seemingly the same time.
 - Use Python threads to make multiple system calls in parallel.  This allows you to do
   blocking I/O at the same time as computation.

## Item 38: Use `Lock` to Prevent Data Races in Threads

 - Even though Python has a global interpreter lock, you're still responsible for protecting
   against data races between the threads in your programs.
 - Your programs will corrupt their data structures if you allow multiple threads to modify
   the same objects without locks.
 - The `Lock` class in the `threading` built-in module is Python's standard mutual exclusion
   lock implementation.

## Item 39: Use `Queue` to Coordinate Work Between Threads

 - Pipelines are a great way to organize sequences of work that run concurrently using
   multiple Python threads.
 - Be aware of the many problems in building concurrent pipelines:  busy waiting, stopping
   workers, and memory explosion.
 - The `Queue` class has all of the facilities you need to build robust pipelines:
   blocking operations, buffer sizes, and joining.

## Item 40: Consider Coroutines to Run Many Functions Concurrently

 - Coroutines provide an efficient way to run tens of thousands of functions seemingly at
   the same time.
 - Within a generator, the value of the `yield` expression will be whatever value was passed
   to the generator's `send` method from the exterior code.
 - Coroutines give you a powerful tool for separating the core logic of your program from its
   interaction with the surrounding environment.
 - Python 2 doesn't support `yield from` or returning values from generators.

## Item 41: Consider `concurrent.futures` for True Parallelism

 - Moving CPU bottlenecks to C-extension modules can be an effective way to improve performance
   while maximizing your investment in Python code.  However, the cost of doing so is high and
   may introduce bugs.
 - The `multiprocess` module provides powerful tools that can parallelize certain types of Python
   computation with minimal effort.
 - The power of `multiprocessing` is best accessed through the `concurrent.futures` built-in
   module and its simple `ProcessPoolExecutor` class.
 - The advanced parts of the `multiprocessing` module should be avoided because
   they are so complex.

## Item 42: Define Function Decorators with `functools.wraps`

 - Decorators are Python syntax for allowing one function to modify another function at runtime.
 - Using decorators can cause strange behaviors in tools tat do introspection, such as debuggers.
 - Use the `wraps` decorator from the `functools` built-in module when you define your own
   decorators to avoid any issues.

## Item 43: Consider `contextlib` and `with` Statements for Reusable `try/finally` Behavior

 - The `with` statement allows you to reuse logic from `try/finally` blocks and reduce
   visual noice.
 - The `contextlib` built-in module provides a `contextmanager` decorator that makes it easy
   to use your own functions in `with` statements.
 - The value yielded by context managers is supplied to the `as` part of the `with`
   statement.  Its' useful for letting your code directly access the cause of the special
   context.

## Item 44: Make `pickle` Reliable with `copyreg`

 - The `pickle` built-in module is only useful for serializing and deserializing objects
   between trusted programs.
 - The `pickle` module may break down when used for more than trivial use cases.
 - Use the `copyreg` built-in module with `pickle` to add missing attribute values,
   allow versioning of classes, and provide stable import paths.

## Item 45: Use `datetime` Instead of `time` for Local Clocks

 - Avoid using the `time` module for translating between different time zones.
 - Use the `datetime` built-in module along with the `pytz` module to reliably convert
   between times in different time zones.
 - Always represent time in UTC and do conversions to local time as the final step
   before presentation.

## Item 46: Use Built-in Algorithms and Data Structures

 - Use Python's built-in modules for algorithms and data structures.
 - Don't reimplement this functionality yourself.  It's hard to get right.

## Item 47: Use `decimal` When Precision is Paramount

 - Python has built-in types and classes in modules that can represent practically
   every type of numerical value.
 - The `Decimal` class is ideal for situations that require high precision and exact
   rounding behavior, such as computations of monetary values.

## Item 48: Know Where to Find Community-Built Modules

 - The Python Package Index (PyPI) contains a wealth of common packages that re built
   and maintained by the Python community.
 - `pip` is the command-line tool to use for installing packages from PyPI.
 - `pip` is installed by default in Python 3.4 and above;  you must install it yourself
   for older versions.
 - The majority of PyPI modules are free and open source software.

## Item 49: Write Docstrings for Every Function, Class, and Module

 - Write documentation for every module, class, and function using docstrings.
   Keep them up to date as your code changes.
 - For modules:  Introduce the contents of the module and any important classes or functions
   all users should know about.
 - For classes:  Document behavior, important attributes, and subclass behavior in the docstring
   following the `class` statement.
 - For functions and methods:  Document every argument, returned value, raised exception,
   and other behaviors in the docstring following the `def` statement.

## Item 50: Use Packages to Organize Modules and Provide Stable APIs

 - Packages in Python are modules that contain other modules.  Packages allow you to organize
   your code into separate, non-conflicting namespaces with unique absolute module names.
 - Simple packages are defined by adding an `__init__.py` file to a directory that contains
   other source files.  These files become the child modules of the directory's package.
   Package directories may also contain other packages.
 - You can provide an explicit API for a module by listing its publicly visible names in its
   `__all__` special attribute.
 - You can hide a package's internal implementation by only importing public names in the
   package's `__init__.py` file or by naming internal-only members with a leading underscore.
 - When collaborating within a single team or on a single codebase, using `__all__` for
   explicit APIs is probably unnecessary.

## Item 51: Define a Root `Exception` to Insulate Callers from APIs

 - Defining root exceptions for your modules allows API consumers to insulate themselves
   from your API.
 - Catching root exceptions can help you find bugs in code that consumes an API.
 - Catching the Python `Exception` base class can help you find bugs in API implementations.
 - Intermediate root exceptions let you add more specific types of exceptions in the future
   without breaking your API consumers.

## Item 52: Know How to Break Circular Dependencies

 - Circular dependencies happen when two modules must call into each other at import time.
   They can cause your program to crash at startup.
 - The best way to break a circular dependency is refactoring mutual dependencies into a
   separate module at the bottom of the dependency tree.
 - Dynamic imports are the simplest solution for breaking a circular dependency between
   modules while minimizing refactoring and complexity.

## Item 53: Use Virtual Environments for Isolated and Reproducible Dependencies

 - Virtual environments allow you to use `pip` to install many different versions of the
   same package on the same machine without conflicts.
 - Virtual environments are created with `pyvenv`, enabled with `source bin/activate`,
   and disabled with `deactivate`.
 - You can dump all of the requirements of an environment with `pip freeze`.
   You can reproduce the environment by supplying the `requirements.txt` file to
   `pip install -r`.
 - In versions of Python before 3.4, the `pyvenv` tool must be downloaded and installed
   separately.  The command-line tool is called `virtualenv` instead of `pyvenv`.

## Item 54: Consider Module-Scoped Code to Configure Deployment Environments

 - Programs often need to run in multiple deployment environments that each have unique
   assumptions and configurations.
 - You can tailor a module's contents to different deployment environments by using normal
   Python statements in module scope.
 - Module contents can be the product of any external condition, including host introspection
   through the `sys` and `os` modules.

## Item 55: Use `repr` Strings for Debugging Output

 - Calling `print` on built-in Python types will produce the human-readable string version
   of a value, which hides type information.
 - Calling `repr` on built-in Python types will produce the printable string version of a value.
   These `repr` strings could be passed to the `eval` built-in function to get back the original
   value.
 - `%s` in format strings will produce human-readable strings like `str`.
   `%r` will produce printable strings like `repr`.
 - You can define the `__repr__` method to customize the printable representation of a class
   and provide more detailed debugging information.
 - You can reach into any object's `__dict__` attribute to view its internals.

## Item 56: Test Everything with `unittest`

 - The only way to have confidence in a Python program is to write tests.
 - The `unittest` built-in module provides most of the facilities you'll need to write good tests.
 - You can define tests by subclassing `TestCase` and defining one method per behavior you'd
   like to test.  Test methods on `TestCase` classes must start with the word `test`.
 - It's important to write both unit tests (for isolated functionality) and integration tests
   (for modules that interact).

## Item 57: Consider Interactive Debugging with `pdb`

 - You can initiate the Python interactive debugger at a point of interest directly
   in your program with the `import pdb; pdb.set_trace()` statements.
 - The Python debugger prompt is a full Python shell that lets you inspect and modify
   the state of a running program.
 - `pdb` shell commands let you precisely control program execution, allowing you to
   alternate between inspecting program state and progressing program execution.

## Item 58: Profile Before Optimizing

 - It's important to profile Python programs before optimizing because the source of slowdowns
   is often obscure.
 - Use the `cProfile` module instead of the `profile` module because it provides more accurate
   profiling information.
 - The `Profile` object's `runcall` method provides everything you need to profile a tree of
   function calls in isolation.
 - The `Stats` object lets you select and print the subset of profiling information you need
   to see to understand your program's performance.

## Item 59: Use `tracemalloc` to Understand Memory Usage and Leaks

 - It can be difficult to understand how Python programs use and leak memory.
 - The `gc` module can help you understand which objects exist, but it has no information
   about how they were allocated.
 - The `tracemalloc` built-in module provides powerful tools for understanding the source
   of memory usage.
 - `tracemalloc` is only available in Python 3.4 and above.
