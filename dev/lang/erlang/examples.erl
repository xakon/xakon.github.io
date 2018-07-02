% An Erlang function that uses recursion to count to ten.
-module(count_to_ten).
-export([count_to_ten/0]).

count_to_ten() -> do_count(0).

do_count(10) -> 10;
do_count(Value) -> do_count(Value+1).
