NodeJS
======

This tool is so important in JavaScript programming, especially for
server-based code, but also for testing client-based code, that deserves
its own page!


### REPL

Yes, Node.js can be executed as a REPL!


### Modules

Both `require` and `module` modules are available at the global scope.
Directories searched for finding an imported module:

    > module.paths
    [ '/home/xakon/src/javascript/repl/node_modules',
      '/home/xakon/src/javascript/node_modules',
      '/home/xakon/src/node_modules',
      '/home/xakon/node_modules',
      '/home/node_modules',
      '/home/xakon/.node_modules',
      '/home/xakon/.node_libraries',
      '/home/xakon/.nvm/versions/node/v6.3.1/lib/node' ]

Paths can in `requre()` can be relative or absolute paths.

If `require()` fails to find module in any of the above paths,
it will fail with a "cannot find module error."

A package can live either in `foo.js`, or in `foo/index.js`, or
in a specific file defined in `foo/package.json` and `main` key.

`require.resolve()` will not load the package, but it will try to
resolve it.

`exports` property in `module` object is what `require()` will import.

`require.extensions` manages the extensions Node will try to load on each
`require()` call, if no extension is specified.  This allows us to load
some settings from a JSON document or an external C/C++ module.


### Environment

Node stores the current program's environment in the `process` object.
For example, the `process.argv` array holds the command-line arguments.

Node supplies its own `assert` library, which resembles a lot the xUnit style.


### Modules ###

_Node_ provides some extra modules not found in a Browser, but they make working
on a host easier:

 - `os`:  Information about current Operating System.
 - `path`:  Manipulation and information about file paths and directories.
 - `url`:  Manipulate Internet addresses (URLs).
 - `querystring`:  Convert search parameters of a URL into an object.
 - `crypto`:  One-way and two-way encryption.
 - `util`:  Many other interesting utilities!

 Also, some special variables exist:

  - `__filename`:  Current file
  - `__dirname`:  Current directory
