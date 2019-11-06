Symbols
=======

`RUST_BACKTRACE`:  Only a `0` disables the function, any other value (even no
value at all) enables the function.

All the following symbols belong to the `std` crate (the Rust Standard Library),
so it is silently ignored.  For example, I write `fmt::print!`, but the full
name of the macro is `std::fmt::print!`.


     Name		|      Description
------------------------+-------------------------------------------------------------------
   panic!		| Crash the current thread of execution with a message
   unreachable!		|
   assert!		| Panics if given value is `false`
   debug_assert!	| Assertion, but only in debug mode
   assert_eq!		| Panics if given values are not equal
   format!		| Write formatted text to `String`
   print!		| Same as `format!`, but text is printed to STDOUT
   println!		| Same as `print!`, but a newline is appended
   eprintln!		| Print formatted text to STDERR with newline appended
   write!		| Like `format!`, but text is written into buffer
   writeln!		| Like `println!`, but text is written into stream
   dbg!()		| Print expression in STDERR & return it
			|
   cfg!			| Conditional compilation (see also `#[cfg()]` attribute)
   env!			| Extract project values from `Cargo.toml`
			|
   iterator::skip()	| Skip n elements from iterator
			|
   Vec::get()		| Get reference to element of `Vec` without crashing
   Vec::push()		| Add element to the tail of `Vec`
   Vec::pop()		| Pop last element of `Vec`
			|
   io::stderr()		| Return a `Stderr' stream object
   env::args()		| Iterator over the cmdline arguments
   env::current_dir()	| Current working directory
   fs::read_dir()	| Read the contents of a directory
			|
   process::exit()	| Terminate current process



     Traits		|      Description
------------------------+-------------------------------------------------------------------
  ops::Drop		| Implement custom destructor when value is dropped
  marked::Sized		| _Marker Trait_ that object has fixed size (most of the types)
  clone::Clone		| Types that support cloning values
  marker::Copy		| _Marker Trait_ that type should be copied, not moved

  fmt::Debug		| Use the `{:?}` marker in format strings, used for debugging
  fmt::Display		| Use the `{}` marker in format strings, used for elegant text
  fmt::Binary		| Use the `{:b}` marker in format strings, used for elegant text
			|
  Write			|
  FromStr		|

  Write::write_fmt()	| Write formatted text to a stream
  FromStr::from_str()	| Parse types from strings


     Attributes		|      Description
------------------------+-------------------------------------------------------------------
  test			| Mark function as a test case
  ignore		| Ignore test function from executing
  macro_use		| Use macros exported from given crate
  cfg			| Conditional compilation
