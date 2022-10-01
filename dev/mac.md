Mac OS X
========

Some useful tools of Mac OS X that have similar Linux counterparts,
but different names:

 - `pbcopy`, `pbpaste`
 - `open`
 - `mdfind`
 - `screencapture`
 - `launchctl`
 - `say`
 - `diskutil`
 - `brew`
 - [DevUtils.app](https://devutils.app/):
   A GUI collection of simple conversions, useful for developers.
   Most of these can be done using command-line tools, though.


Links
-----

 - [Dan Rodney's List of Mac Resources][1]
 - [Objective-See's Tools](https://objective-see.org/tools.html):
   Free, open-source, tools to secure your Mac.


Tricks
------

On modern macOS, we can setup `sudo(8)` to use the fingerprint key instead of
typing a password.  Very convenient and fast method.  The only need we have to
do is add the following line at the top of the file `/etc/pam.d/sudo`:

    auth    sufficient    pam_tid.so


[1]: http://www.danrodney.com/mac/
