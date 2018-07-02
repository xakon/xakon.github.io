GNU Global
==========

Index the code:

    $ gtags

This will create the database files `GPATH`, `GRTAGS`, and `GTAGS`.

Querying the code with:

    $ global value_t
    lib/optional/libffi/ffi.cpp

    $ global -x value_t
    value_t            28 lib/optional/libffi/ffi.cpp struct value_t {

    $ $ global -xr value_t
    value_t           415 lib/optional/libffi/ffi.cpp   value_t *retval = new value_t(size);
    value_t           463 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           471 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           479 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           487 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           495 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           503 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);
    value_t           511 lib/optional/libffi/ffi.cpp   value_t* value = static_cast<value_t*>(car(p)->pointer->value);

    $ global -xg make_clo
    make_clo           34 include/mickey/eval.h cons_t* make_closure(cons_t* args, cons_t* body, environment_t* e);
    make_clo          371 src/core-transition.cpp    * (or we could call make_closure here):
    make_clo          218 src/eval.cpp               cons_t *closure = make_closure(def_args, def_body, e->extend());
    make_clo          272 src/eval.cpp             return make_closure(args, body, e->extend());
    make_clo          613 src/library/scheme-base.cpp    * (or we could call make_closure here):
    make_clo           60 src/library/srfi-16.cpp   return make_closure(symbol("args"), cons(cond_cases), e);
    make_clo           14 src/make-closure.cpp cons_t* make_closure(cons_t* args, cons_t* body, environment_t* e)

Tip:  Create an alias for `global -x`, maybe `gx`.

A short tutorial can be found at <https://csl.name/post/gtags/>.
