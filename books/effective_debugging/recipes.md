## Item 1: Handle all problems through an Issue-Tracking System

 - Ensure each issue contains a precise description on how to reproduce
   the problem with a short, self-contained, correct example.
 - Triage issues and schedule your work based on the priority and
   severity of each issue.
 - Document your progress through the issue-tracking system.


## Item 2: Use Focused Queries to search the Web for insights into your problem

 - Perform a web search regarding error messages by enclosing them in
   double quotes.
 - Value the answers from StackExchange sites.
 - If all else fails, post your own question or open an issue.


## Item 3: Confirm that Preconditions and Postconditions are satisfied

 - Carefully examine a routine's preconditions and postconditions.


## Item 4: Drill up from the problem to the bug or down from the program's start to the bug

 - Work bottom up in the case of failures that have a clearly
   identifiable cause, such as crashes, freezes, and error messages.
 - Work top down in the case of failures that are difficult to pin down,
   such as performance, security, and reliability.


## Item 5: Find the difference between a known good system and a failing one

 - Compare the behavior of a known good system with that of a failing
   one to find the failure's cause.
 - Consider all of the elements that can influence a system's behavior:
   code, input, invocation arguments, environment variables, services,
   and dynamically linked libraries.


## Item 6: Use the software's debugging facilities

 - Identify what debugging facilities are available in the software
   you're troubleshooting, and use them to investigate the problem
   you're examining.


## Item 7: Diversify your build and execution environment

 - Diverse compilation and execution platforms can offer you valuable
   debugging insights.
 - Fix a tricky algorithm by implementing it in a higher-level language.


## Item 8: Focus your work on the most important problems

 - Not all problems are worth solving.
 - Fixing a low-priority issue may deprive you of the time required to
   address a high-priority one.


## Item 9: Set yourself up for debugging success

 - Believe that the problem can be traced and fixed.
 - Set aside sufficient time for your debugging task.
 - Arrange to work without distractions.
 - Sleep on a difficult problem.
 - Don't give up.
 - Invest in your environment, tools, and knowledge.


## Item 10: Enable the efficient reproduction of the problem

 - Reproducible runs simplify your debugging process.
 - Create a short self-contained example that reproduces the problem.
 - Have mechanisms to create a replicable execution environment.
 - Use a revision control system to label and retrieve your software's
   versions.


## Item 11: Minimize the turnaround time from your changes to their result

 - A fast turnaround time increases your effectiveness.
 - Set up a fast automated build and deployment process.
 - Minimize the time it takes for your tests to fail.


## Item 12: Automate complex testing scenarios

 - Automate the execution of complex test cases through the use of a
   scripting language.


## Item 13: Enable a comprehensive overview of your debugging data

 - With a lot of data in view, you can concentrate better and spot
   patterns and correlations.
 - Use the largest display area you can obtain.
 - Display relatively static data on printed sheets.


## Item 14: Consider updating your software

 - Try your failing system on an updated environment.
 - Don't expect too much from this exercise.
 - Consider the possibility of third-party bugs.


## Item 15: Consult third-party source code for insights on its use

 - Get the source code for third-party code you depend on.
 - Explore problems with third-party APIs and cryptic error messages by
   looking at the source code.
 - Link with the library's debug build.
 - Correct third-party code only when there's no other reasonable
   alternative.

## Item 16: Use specialized monitoring and test equipment

 - A logic, bus, or protocol analyzer can help you pinpoint problems
   that occur near the hardware level.
 - A home-brew contraption may help you investigate problems related to
   hardware.
 - Monitor network packets with Wireshark and Ethernet hub, a managed
   switch, or command-line capture.

## Item 17: Increase the prominence of a failure's effects

 - Force the execution of suspect paths.
 - Increase the magnitude of some effects to make them stand out for study.
 - Apply stress to your software to force it out of its comfort zone.
 - Perform all your changes under a temporary revision control branch.


## Item 18: Enable the debugging of unwieldy systems from your desk

 - Set up a device emulator so you can troubleshoot using your work-
   station's screen and keyboard.
 - Use a shim to debug embedded code with your workstation's native tools.
 - Arrange for remote access to customer's PCs.
 - Set up KVM over IP devices to debug remote servers.


## Item 19: Automate debugging tasks

 - Automate the exhaustive searching for failures;  computer time is
   cheap, yours is expensive.


## Item 20: Houseclean before and after debugging

 - Ensure a baseline level of code hygiene before embarking on a major
   debugging task.
 - When you finish, clean up temporary code changes and commit useful ones.


## Item 21: Fix all instances of a problem class

 - After fixing one fault, find and fix similar ones and take steps to
   ensure they will not occur in the future.


## Item 22: Analyze debug data with Unix command-line tools

 - Analyze debug data through Unix commands that can obtain, select,
   process, and summarize textual records.
 - By combining Unix commands with a pipeline, you can quickly
   accomplish sophisticated analysis tasks.


## Item 23: Utilize command-line tool options and idioms

 - Diverse `grep' options can help you narrow down your search.
 - Redirect a program's standard error in order to analyze it.
 - Use `tail -f' to monitor log files as they grow.


## Item 24: Explore debug data with your editor

 - Locate misspelled identifiers using your editor's search commands.
 - Edit text files to make differences stand out.
 - Edit log files to increase their readability.


## Item 25: Optimize your work environment

 - Examining a file's history with a version control system can show you
   when and how bugs were introduced.
 - Use a version control system to look at the differences between
   correct and failing software versions.

## Item 26: Hunt the causes and history of bugs with the revision control system

 - Examining a file's history with a version control system can show you
   when and how bugs were introduced.
 - Use a version control system to look at the differences between
   correct and failing software versions.


## Item 27: Use monitoring tools on systems composed of independent processes

 - Set up a monitoring infrastructure to check all parts composing the
   service you're offering.
 - Quick notification of failures may allow you to debug your system in
   its failed state.
 - use the failure history to identify patterns that may help you
   pinpoint a problem's cause.


## Item 28: Use code compiled for symbolic debugging

 - Configure your build settings to get the required level of debugging
   information.
 - Disable compiler code optimizations so that the generated code
   matches the code you're debugging.


## Item 29: Step through the code

 - Examine the execution's sequence and the state of the program by
   stepping through the code.
 - Speed up your examination by stepping over irrelevant parts.
 - Narrow down on problems you stepped over by setting a breakpoint,
   running the code again, and stepping into the key routine.


## Item 30: Use code and data breakpoints

 - Narrow down on the code that interests you with a code breakpoint.
 - Skip executions that don't concern you by adding a breakpoint when
   another is hit.
 - Debug abnormal terminations by breaking on exceptions or in exit
   routines.
 - Troubleshoot a hung program by stopping its execution within the
   debugger.
 - Pinpoint mysteriously changing variables with data breakpoints.


## Item 31: Familiarize yourself with reverse debugging


## Item 32: Navigate along the calls between routines

 - Look at the program's stack to understand its state.
 - A messed up stack can be the result of a problem in your code.


## Item 33: Look for errors by examining the values of variables and expressions

 - Verify the values of key expressions.
 - Set up the continuous display of expressions that change during an
   algorithm's execution.
 - Follow a routine's logic through its local variables.
 - Use data visualization facilities to untangle complex data
   structures.


## Item 34: Know how to attach a debugger to a running process

 - Debug an already running process by attaching your debugger to it.
 - Debug applications on resource-constrained devices through remote
   debugging facilities.


## Item 35: Know how to work with core dumps

 - Debug crashed and hung applications by obtaining and examining their
   memory dumps.
 - Debug installed customer applications by setting up a crash report
   system.


## Item 36: Tune your debugging tools

 - Use a debugger with a graphical interface.
 - Configure `gdb' to save its history and use your favorite keyboard
   bindings.
 - Put commonly used commands inside `gdb' scripts.
 - Build your program within `gdb' to maintain the commands you entered.


## Item 37: Know how to view assembly code and raw memory

 - To really understand how your code behaves, work with disassembled
   machine instructions.
 - The register `eax' or `r0' can tell you a function's return value.
 - To really understand how your data is stored, look at its internal
   representation.


## Item 38: Review and manually execute suspect code

 - Look through the code for common mistakes.
 - Execute the code by hand to verify its correctness.
 - Untangle complex data structures by drawing them.
 - Address complexity with large sheets of paper, a whiteboard, and color.
 - Deepen your engagement with a problem by manipulating physical objects.


## Item 39: Go over your code and reasoning with a colleague

 - Explain your code to a rubber duck.
 - Engage in the practice of code reviewing.
 - Debug multi-party problems through role playing.


## Item 40: Add debugging functionality

 - Add to your program an option to enter a debug mode.
 - Add commands to manipulate the program's state, log its operation,
   reduce its runtime complexity, shortcut through user interface
   navigation, and display complex data structures.
 - Add command-line, web, and serial interfaces to debug embedded devices
   and servers.


## Item 41: Add logging statements

 - Add logging statements to set up a permanent, maintained debugging
   infrastructure.
 - Use a logging framework instead of reinventing the wheel.
 - Configure the topic and details of what you log through the logging
   framework.


## Item 42: Use Unit Tests

 - Pinpoint flaws by probing suspect routines with unit tests.
 - Increase your effectiveness by adopting a unit testing framework,
   refactoring the code to accommodate the tests, and automating the
   tests' execution.


## Item 43: Use assertions

 - Complement unit testing with assertions to pinpoint more precisely a
   fault's location.
 - Debug complex algorithms with assertions that verify their
   preconditions, invariants, and postconditions.
 - Add assertions to document your understanding of the code you debug
   and to test your suspicions.


## Item 44: Verify your reasoning by perturbing the debugged program

 - Set values in the code by hand to identify correct and incorrect ones.
 - If you can't find guidance to correct the code, experiment by trying
   alternate implementations.


## Item 45: Minimize the differences between a working example and the failing code

 - To find the element that causes a failure, gradually trim down your
   failing code to match a working example or make a working example
   match your failing code.


## Item 46: Simplify the suspect code

 - Selectively prune large code thickets in order to make the fault
   stand out.
 - Break complex statements or functions into smaller parts so that you
   can monitor or test their function.
 - Consider replacing a complex buggy algorithm with a simpler one.


## Item 47: Consider rewriting the suspect code in another language

 - Rewrite code you can't fix in a more expressive language to minimize
   the number of potentially faulty statements.
 - Port buggy code to a better programming environment to enhance your
   debugging arsenal.
 - Once you have an alternative working implementation, adopt it, or use
   it as an oracle to fix the original one.


## Item 48: Improve the suspect code's readability and structure

 - Format code in a consistent manner to allow your eye to catch error
   patterns.
 - Refactor code to expose bugs hiding in badly written or needlessly
   complex code structures.


## Item 49: Fix the bug's cause, rather than its symptom

 - Never code around a bug's symptom: find and fix the underlying fault.
 - When possible, generalize complex cases rather than trying to fix
   special cases.


## Item 50: Examine generated code

 - By examining automatically generated code, you can comprehend
   compilation and runtime problems in the corresponding source code.
 - Use compiler options or specialized tools to obtain a readable
   representation of automatically generated code.


## Item 51: Use static program analysis

 - Specialized static program analysis tools can identify more potential
   bugs in code than compiler warnings.
 - Configure your compiler to analyze your program for bugs.
 - Include in your build cycle and continuous integration cycle at least
   one static program analysis tool.


## Item 52: Configure deterministic builds and executions

 - Configure your build process and the software's execution to achieve
   reproducible runs.


## Item 53: Configure the use of debugging libraries and checks

 - Identify and enable the runtime debugging support offered by your
   environment's compiler and libraries.
 - If no support is available, consider configuring your software to use
   third-party libraries that offer it.


## Item 54: Find the fault by constructing a test case

 - The process of creating a reliable minimal test case can lead you to
   the fault and its solution.
 - Embed your test case in the software as a unit or a regression test.


## Item 55: Fail fast

 - When debugging, set up trip wires so that your program will fail at
   the first sign of trouble.


## Item 56: Examine application log files

 - Begin the investigation of a failing application by examining
   its log files.
 - Increase an application's logging verbosity to record the reason of
   its failure.
 - Configure and filter log files to narrow down the problem.


## Item 57: Profile the operation of systems and processes

 - Analyze performance issues by looking at the levels of CPU, I/O, and
   memory utilization and saturation.
 - Narrow down on the code associated with a performance problem by
   profiling a process's CPU and memory use.


## Item 58: Trace the code's execution

 - System and library call tracing allows you to monitor the behavior of
   programs without access to their source code.
 - Learn how to use the "Windows Performance Toolkit" (Windows),
   "SystemTap" (Linux), or "DTrace" (OS X, Solaris, FreeBSD).


## Item 59: Use Dynamic Program Analysis tools

 - Use Dynamic Program Analysis tools to locate problems that actually
   occur in your code.


## Item 60: Analyze deadlocks with postmortem debugging

 - Debug deadlocks by obtaining a snapshot of the deadlocked program and
   pinpointing the threads and the code that are waiting for a set of
   resources.


## Item 61: Capture and Replicate

 - Pinpoint non-deterministic concurrency errors by capturing a failing
   run, analyzing the recording, and replaying the captured file under a
   debugger.


## Item 62: Uncover deadlocks and race conditions with specialized tools

 - Comb multi-threading source code with static analysis tools to
   identify possible synchronization and locking errors.
 - Run multi-threading programs under dynamic analysis tools to find API
   misuses, potential deadlocks, and data races.


## Item 63: Isolate and remove non-determinism

 - Isolate concurrent code from the rest.  This allows you to use the
   most suitable debugging tools and techniques on each part.
 - Create a testing and debug configuration in which mock objects and
   other techniques make the code behave in a deterministic manner.
   This provides you with repeatable code execution.


## Item 64: Investigate scalability issues by looking at contention

 - Use profiling tools that monitor performance counters in order to
   identify and isolate instances of false sharing.


## Item 65: Locate false sharing by using performance counters

 - Use profiling tools that monitor performance counters in order to
   identify and isolate instances of false sharing.


## Item 66: Consider rewriting the code using higher-level abstractions

 - To avoid concurrency pitfalls, consider reimplementing buggy
   concurrent code at a higher level, using specialized languages,
   processes, tools, frameworks, or libraries.
