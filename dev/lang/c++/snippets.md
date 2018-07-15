Snippets
========

Some really useful snippets of C++ code I need to write down for future
reference.


## Loop over the lines of a file (stream)

Very clever way to read lines from a stream.  Got from Stroustrup himself.
Use `std::getline()` and a `for` loop.  Definition of uninitialized
`string` is hidden inside the `for` loop and goes almost unnoticed!

```c++
   auto& is = std::cin;		// or some other input stream
   int lineno = 0;
   for (std::string line; std::getline(is, line); ) {
      lineno++;
      action(line);
   }
```

This idiom solves the problem of defining variables (lines, characters)
without initialization.  Although we still define one uninitialized variable,
it is kept so close to its usage, that it doesn't pollute the function's
scope a lot.

Another way to use this idiom:

```c++
// The C++ Programming Language 4/e, p.141
void intval()
{
   using namespace std;
   for (char c; cin >> c;)
      cout << "the value of '" << c <<"' is " << int{c} << '\n';
}
```

## Function try-catch

A try-catch statement can appear anywhere a statement can appear.
Thus we can use it in place of the body of a function:

```c++
bool boobar()
try {
   std::cout << "foobar" << std::endl;
   throw std::exception("foobar error");
catch (const std::exception& e) {
   std::cout << e.what() << std::endl;
   return false;
}
```

This idiom is mainly useful at constructors:

```c++
foobar::foobar()
try
   : m_foo(new foo()), m_bar()
{
   std::cout << "foobar constructed" << std::endl;
}
catch (...) {
   delete m_foo;
   throw;
}
```

This technique was found at: [Code Project][code_project_url].

[code_project_url]:	http://www.codeproject.com/Articles/1035313/Cplusplus-is-fun-tips-and-tricks

## Effective Use of the Ternary Operator

```c++
int eggs = 5;
const char *msg = "You have %s";
printf(msg, eggs == 0 ? "no eggs" :
	    eggs == 1 ? "an egg"  :
			"some eggs");
```

Found as a Perl trick at: [Learn Perl in 2 hours and a half][perl].

[perl]:		http://qntm.org/files/perl/perl.html


[//]:	# vim: ft=markdown spell
