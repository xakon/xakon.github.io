sudo(8)
=======

This tool is powerful and provides many opportunities to the users and the
administrators of a system.  Unfortunately, with great power comes also
great complexity.  Yes, `sudo(8)` is very complex and I cannot actually
understand its internals and/or the configuration files.

A nice [article in Opensource.com][sudo-article] helped me to distinguish
some aspects of the program.  I will keep it here as a reference for future
configurations.


[sudo-article]:	https://opensource.com/article/17/12/using-sudo-delegate

On modern macOS, we can setup `sudo(8)` to use the fingerprint key instead of
typing a password.  Very convenient and fast method.  The only need we have to
do is add the following line at the top of the file `/etc/pam.d/sudo`:

    auth    sufficient    pam_tid.so
