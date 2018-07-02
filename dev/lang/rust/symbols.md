Symbols
=======

`RUST_BACKTRACE`:  Only a `0` disables the function, any other value (even no
value at all) enables the function.


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
   write!		| Like `format!`, but text is written into buffer
   writeln!		| Like `println!`, but text is written into stream
			|
   cfg!			| Conditional compilation (see also `#[cfg()]` attribute)
			|
   env::args()		| Iterator over the cmdline arguments
   iterator::skip()	| Skip n elements from iterator
			|
   Vec::push()		| Add element to the tail of `Vec`
			|
   io::stderr()		| Return a `Stderr' stream object
			|
   process::exit()	| Terminate current process




     Traits		|      Description
------------------------+-------------------------------------------------------------------
  fmt::Debug		| Use the `{:?}` marker in format strings, used for debugging
  fmt::Display		| Use the `{}` marker in format strings, used for elegant text
  fmt::Binary		| Use the `{:b}` marker in format strings, used for elegant text
			|
  Write::write_fmt()	| Write formatted text to a stream
  FromStr::from_str()	| Parse types from strings


     Attributes		|      Description
------------------------+-------------------------------------------------------------------
  test			| Mark function as a test case
  macro_use		| Use macros exported from given crate
  cfg			| Conditional compilation
