Browser
=======

JavaScript running on browsers have a different environment.
Most notable, the `Console` object.  Here are some interesting methods:

 - `log()`, `info()`, `warn()`, `error()`
 - `table()`
 - `group()`, `endGroup()`
 - `count()`, `time()`, `endTime()`
 - `assert()`, `trace()`

Chrome DevTools (and probably Firefox as well) have an enormous amount of tools
to assist on Web development.  They even allow users to extend them by
installing extensions, or even write custom extensions for them.  The official
documentation can be found at [Chrome DevTools][chrome-devtools], together with
plenty of guides.

[chrome-devtools]:	https://developers.google.com/web/tools/chrome-devtools

Many tips and explanations can be found in the article
[Hidden Features of Chrome DevTools](https://martinheinz.dev/blog/33).


### Storage ###

There are many places where an application can save data, all of them with some
cons and pros:

#### `localStorage` API ####

The `localStorage` API is the most popular storage option  The data is stored
across sessions, never shared with the server, available for all pages under the
same protocol and domain, limited to ~5MB.

It blocks the main thread, as all the functions are synchronous, so the Chrome
developers don't recommend it.

Essentially, it is a key-value store, where both keys and values are only UTF-16
strings.

The functions available through this API are:

 - `window.localStorage.setItem('key', 'value')`
 - `window.localStorage.getItem('key')`
 - `window.localStorage.removeItem('key')`
