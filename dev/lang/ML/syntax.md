Syntax
======

### Comments

    (* Comments are included in these Pascal-like characters.
       They can be embedded. *)

### Bindings

    val NAME = EXPR;

The ending semicolon is required only in the REPL, but I find it a good practice
to always include it.

There are no variable assignments, but a binding can hide a previous one.

### Functions

    fun NAME (PARAMS) =
	EXPR

A *Function Binding* is

E₁ + T₂

Types
-----

 - `int`, `real`, `bool`, `string`, `option`, `unit`, `tuple`, `list`
