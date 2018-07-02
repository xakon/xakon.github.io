Modules
=======

At `/sys/modules/` directory we can find available modules, together with their
parameters.  E.g.,

```sh
   $ ls /sys/module/tcp_cubic/parameters/
   $ cat /sys/module/tcp_cubic/parameters/tcp_friendliness
```

The available built-in modules can be found in
   `/lib/modules/{kernel-version}/modules.builtin`.
In these directories we can find a ton of useful information.
