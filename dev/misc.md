Projects
--------

Creating a project from a template is often desirable.  A tool, written in
Python, that performs such operation is
[cookiecutter](https://github.com/audreyr/cookiecutter), which comes with some
templates for other project languages, besides Python.


Miscellaneous
------------

### VPS

 - **thales** at [LeaseWeb DE](http://leaseweb.com)
   (Consider transferring to LeaseWeb or [VULTR](https://www.vultr.com/)
   I moved the VPS to LeaseWeb, but also consider OVH, the cheapest
   and most innovative European company.

### DNS entries

 - <xakon.tk>: administered at [Dot.tk](http://dot.tk/)
 - <my-ceid.tk>: administered at [Dot.tk](http://dot.tk/)
 - <kontas.tk>: administered at [Dot.tk](http://dot.tk/),
   I plan to use it as christos@kontas.tk or xakon@kontas.tk
 - <thegreeks.nl>: administered at [YourHosting](http://yourhosting.nl)
   I moved the domain from YourHosting to Lucas' platform,
   [Hostinf4Real](http://hosting4real.net)
   Management of my domain using the cPanel found at:
   <http://thegreeks.nl:2083>
 - <the-greeks.tk> & <thegreeks.tk>:
   Alternatives to my NL domain, free from [Dot.tk](http://dot.tk/)

### Dynamic IP

 - [dhcp.io]: unfortunately, I've used login name of `aristotle`.

### HTTP

 - [Select an HTTP Status Code](http://racksburg.com/choosing-an-http-status-code/)
 - [HTTP Status Codes](https://httpstatuses.com/)

### Platforms

 - [How to Program an NES game in C](http://nesdoug.com/)

### Katas

 - [ACM Problems to Solve](http://acm.timus.ru/problem.aspx?space=1#=PROBLEM_NUMBER)


Refactorings
------------

 - [Refactoring Catalog](http://refactoring.com/catalog/)


Checklists
----------

After reading a great article about creating
[Checklists for Code Reviews](http://blog.rbcommons.com/2013/04/24/using-checklists-for-code-review/),
I decided to create my own checklists for any repeated workflow in my life.
After all, isn't this what we call a "procedure"?

Some checklists the author mentions are:

### User Interface

- Are screenshots provided by all UI changes?
- Does this change introduce any new concepts or models? Evaluate.
- How much expertise and context will a prospective user need?
- Do we do anything similar elsewhere?  Can we build on existing knowledge or habits?
- Do we do anything similar but just different enough to cause problems with old habits?
- Are Are there any new multi-step workflows?  How long and complex are they?
- If users make mistakes or errors, what are the failure conditions?  Can mistakes be undone?
- How is the copy?  Are sentences well-formed and clear?  Any spelling errors or typos?
- Is the UI layout localizable?


### Visual Design (for native desktop app)

- Are controls laid out in a way which makes sense given visual scan order?
- Check for alignment.
- Check for layout, spacing, and padding.
- Check for visual consistency.

### Correctness (for C/C++ code)

- Correctness of algorithms
- Loop iteration and off-by-one
- Memory access errors
- Memory leaks
- Incorrect behavior
- Switch/break fallthrough
- Exception safety

### Security (for C/C++ code)

- Array bounds on buffers
- Are files created and read/written?  Check permissions, races
- All user input sanitized or validated?
- Proper, bounded use of str\*, printf, f\* functions?
- Validate remote host cert validity & identity
- Crypto use
