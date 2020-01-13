Debugging
=========

Author:	David J. Agans
ISBN:	0-8144-7457-8
ISBN13:	9-780814-474570
Website: http://debuggingrules.com


Rules
-----

 - Understand the System
   - Read the manual
   - Read everything in depth
   - Know the fundamentals
   - Know the road map
   - Understand the tools
   - **Look up the details.**

 - Make It Fail
   - Do it again
   - Start at the beginning
   - Stimulate the failure
   - But don't simulate the failure
   - Find the uncontrolled condition that makes it intermittent
   - Record everything and find the signature of intermittent bugs
   - Don't trust statistics too much
   - Know that "that" _can_ happen
   - Never throw away a debugging tool

 - Quit Thinking and Look
   - See the failure
   - See the details
   - Build instrumentation in
   - Add instrumentation on
   - Don't be afraid to dive in
   - Watch out for Heisenberg
   - Guess only to focus the search

 - Divide and Conquer
   - Narrow the search with successive approximation
   - Get the range
   - Determine which side of the bug you are on
   - Use easy-to-spot test patterns
   - Start with the bad
   - Fix the bugs you know about
   - Fix the noise first

 - Change One Thing at a Time
   - Isolate the key factor
   - Grab the brass bar with both hands
   - Change one test at a time
   - Compare it with a good one
   - Determine what you changed since the last time it worked

 - Keep an Audit Trail
   - Write down what you did, in what order, and what happened as a result
   - Understand that any detail could be the important one
   - Correlate events
   - Understand that audit trails for design are also good for testing
   - Write it down!

 - Check the Plug
   - Question your assumptions
   - Start at the beginning
   - Test the tool

 - Get a Fresh View
   - Ask for fresh insights
   - Tap expertise
   - Listen to the voice of experience
   - Know that help is all around you
   - Don't be proud
   - Report symptoms, not theories
   - Realize that you don't have to be sure

- If you Didn't Fix It, It Ain't Fixed
   - Check that it's really fixed
   - Check that it's really your fix that fixed it
   - Know that it _never_ just goes away by itself
   - Fix the cause
   - Fix the process


Extended Rules
--------------

### Understand the System ###

This is the first rule, because it's the most important.  Understand?

- **Read the manual.**
  It'll tell you to lubricate the trimmer head on your weed whacker so that the
  lines don't fuse together.

- **Read everything in depth.**
  The section about the interrupt getting to your microcomputer is buried on
  page 37.

- **Know the fundamentals.**
  Chain saws are *supposed* to be loud.

- **Know the road map.**
  Engine speed can be different from tire speed, and the difference is in the
  transmission.

- **Understand the tools.**
  Know which end of the thermometer is which, and how to use the fancy features
  on your Glitch-O-Matic logic analyzer.

- **Look up the details.**
  Even Einstein looked up the details.  Kneejerk, on the other hand, trusted his
  memory.

### Make It Fail ###

It seems easy, but if you don't do it, debugging is hard.

- **Do it again.**
  Do it again so you can look at it, so you can focus on the cause, and so you
  can tell if you fixed it.

- **Start at the beginning.**
  The mechanic needs to know that the car went through the car wash before the
  windows froze.

- **Stimulate the failure.**
  Spray a hose on that leaky window.

- **But don't simulate the failure.**
  Spray a hose on the _leaky_ window, not on a different, "similar" one.

- **Find the uncontrolled condition that makes it intermittent.**
  Vary everything you can --- shake it, rattle it, rool it, and twist it until
  it shouts.

- **Record everything and find the signature of intermittent bugs.**
  Our bonding system always and only failed on jumbled calls.

- **Don't trust statistics too much.**
  The bonding problem seemed to be related to the time of day, but it was
  actually the local teenagers tying up the phone lines.

- **Know that "that" _can_ happen.**
  Even the ice cream flavor can matter.

- **Never throw away a debugging tool.**
  A robot paddle might come in handy someday.

### Quit Thinking and Look ###

You can think up thousands of possible reasons for a failure.
_You can see only the actual cause._

- **See the failure.**
  The senior engineer _saw_ the real failure and was able to find the cause.
  The junior guys _thought_ they _knew_ what the failure was and fixed something
  that wasn't broken.

- **See the details.**
  Don't stop when you hear the pump.  Go down to the basement and find out
  _which_ pump.

- **Build instrumentation in.**
  Use source code debuggers, debug log, status messages, flashing lights, and
  rotten egg odors.

- **Add instrumentation on.**
  Use analyzers, scopes, meters, metal detectors, electrocardiography machines,
  and soap bubbles.

- **Don't be afraid to dive in.**
  So it's production software.  It's broken, and you'll have to open it up to
  fix it.

- **Watch out for Heisenberg.**
  Don't let your instruments overwhelm your system.

- **Guess only to focus the search.**
  Go ahead and guess that the memory timing is bad, but look at it before you
  build a timing fixer.

### Divide and Conquer ###

It's hard for a bug to keep hiding when its hiding place keeps getting cut in
half.

- **Narrow the search with successive approximation.**
  Guess a number from 1 to 100, in seven guesses.

- **Get the range.**
  If the number is 135 and you think the range is 1 to 100, you'll have to widen
  the range.

- **Determine which side of the bug you are on.**
  If there's goo, the pipe is upstream.  If there's no goo, the pipe is
  downstream.

- **Use easy-to-spot test patterns.**
  Start with clean, clear water so the goo is obvious when it enters the stream.

- **Start with the bad.**
  There are too many good parts to verify.  Start where it's broken and work
  your way back up to the cause.

- **Fix the bugs you know about.**
  Bugs defend and hide one another.  Take 'em out as soon as you find 'em.

- **Fix the noise first.**
  Watch for stuff that you _knwo_ will make the rest of the system go crazy.
  Bug don't get carried away on marginal problems or aesthetic changes.

### Change One Thing at a Time ###

You need some predictability in your life.  Remove the changes that didn't do
what you expected.  They probably did something you didn't expect.

- **Isolate the key factor.**
  Don't change the watering schedule if you're looking for the effect of the
  sunlight.

- **Grab the brass bar with both hands.**
  If you try to fix the nuke without knowing what's wrong first, you may have an
  underwater Chernobyl on your hands.

- **Change one test at a time.**
  I knew my VGA capture phase was broken because nothing else was changing.

- **Compare it with a good one.**
  If the bad ones all have something that the good ones don't, you're onto the
  problem.

- **Determine what you changed since the last time it worked.**
  My friend had changed the cartridge on the turntable, so that was a good place
  to start.

### Keep an Audit Trail ###

- **Write down what you did, in what order, and what happened as a result.**
  When did you last drink coffee?  When did the headache start?

- **Understand that any detail could be the important one.**
  It had to be a plaid shirt to crash the video chip.

- **Correlate events.**
  "It made a noise for four seconds starting at 21:04:53" is better than "It
  made a noise".

- **Understand that audit trails for design are also good for testing.**
  Software configuration control tools can tell you which revision introduced
  the bug.

- **Write it down!**
  No matter how horrible the moment, make a memorandum of it.

### Check the Plug ###

Obvious assumptions are often wrong.  And to rub it in, assumption bugs are
usually the easiest to fix.

- **Question your assumptions.**
  Are you running the right code?  Are you out of gas?  Is it plugged in?

- **Start at the beginning.**
  Did you initialize memory properly?  Did you squeeze the primer bulb?
  Did you turn it on?

- **Test the tool.**
  Are you running the right compiler?  Is the fuel gauge stuck?
  Does the meter have a dead battery?

### Get a Fresh View ###

You need to take a break and get some coffee, anyway.

- **Ask for fresh insights.**
  Even a dummy can help you see something you didn't see before.

- **Tap expertise.**
  Only the VGA capture vendor could confirm that the phase function was broken.

- **Listen to the voice of experience.**
  It will tell you the dome light wire gets pinched all the time.

- **Know that help is all around you.**
  Coworkers, vendors, the Web, and the bookstore are waiting for you to ask.

- **Don't be proud.**
  Bugs happen.  Take pride in getting rid of them, not in getting rid of them by
  yourself.

- **Report symptoms, not theories.**
  Don't drag a crowd into your rut.

- **Realize that you don't have to be sure.**
  Mention that the shirt was plaid.

### If you Didn't Fix It, It Ain't Fixed ###

And now that you have all these techniques, there's no excuse for leaving it
unfixed.

- **Check that it's really fixed.**
  Don't assume that it was the wires and send that dirty fuel filter back onto
  the road.

- **Check that it's really your fix that fixed it.**
  "Wubba!" might not be the thing that did the trick.

- **Know that it _never_ just goes away by itself.**
  Make it come back by using the original Make It Fail methods.  If you _have_
  to ship it, ship it with a trap to catch it when it happens in the field.

- **Fix the cause.**
  Tear out the useless eight-track deck before you burn out another transformer.

- **Fix the process.**
  Don't settle for just cleaning up the oil.  Fix the way you design machines.
