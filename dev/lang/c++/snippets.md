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

## Custom Iterator over Enum values ##

A nice example of creating a C++11 custom iterator, especially one over enum
values:

```c++
template<class T>
class EnumValues {
public:
   class Iterator {
   public:
      using Scalar = typename std::underlying_type<T>::type;

      Iterator(T value) : _value(value) {
      }

      T operator*() const {
	 return _value;
      }

      void operator++() {
	 _value = T(static_cast<Scalar>(_value) + 1);
      }

      bool operator!=(Iterator rhs) {
	 return _value != rhs._value;
      }

   private:
      T _value;
   };

   Iterator begin() {
      return Iterator(T());
   }

   Iterator end() {
      return Iterator(T::Count);
   }
};


enum class Color {
   Red, Blue, Green,
   Count,
};


void test()
{
   for (Color color: EnumValues<Color>())
      std::cout << "color is " << int(color) << '\n';
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


## Sync `iostreams` with C Standard I/O

Just read in an article about the call to:
    `std::ios_base::sync_with_stdio(false)`
which optimizes a lot I/O processing.

This function, in general, tries to synchronize I/O access both from C++ and C
libraries, something that most of the times is useless and should be avoided.


## Computing remainders by doubling

This technique comes from a famous book, but I read it in an blog article of
[Eli Bendersky](https://eli.thegreenplace.net/2018/computing-remainders-by-doubling/).
The author presents a proof of the algorithm and a Python implementation.
Here is the version in ANSI C:

```c++
int fast_remainder(int a, int b)
{
   if (a < b) return a;
   if (a - b < b) return a - b;

   int r = fast_remainder(a, b + b);
   return (r < b) ? r : r - b;
}
```


## GNU C++ shortcut to include all standard headers

Include `<bits/stdc++.h>` and have access to all standard headers.
This is a GNU extension.


## Language constructs over libraries ##

In the nice reference article of Arthur O'Dwyer
[Prefer core-language features over library facilities](https://quuxplusone.github.io/blog/2022/10/16/prefer-core-over-library/),
a number of library constructs are mentioned, which should be replaced by core
concepts instead.  Here is a short summary:

Core feature		| Library feature
------------------------|------------------------
`'\n'`			| `std::endl`
_ranged `for`_		| `std::for_each()`
`void*`			| `std::byte*`
`struct`		| `std::tuple`
_arrays_ `T[]`		| `std::array`
_assignment_		| `.reset()`
`char`			| `std::byte`
_lambdas_		| `std::bind()`
`new(p) T(args...)`	| `std::construct_at()`
`alignof`		| `std::alignment_of()`
`alignas`		| `std::aligned_storage_t()`
`requires`		| `std::enable_if()`

I maintain a different order than the original article, based on the most used
features I use.


[//]:	# vim: ft=markdown spell
