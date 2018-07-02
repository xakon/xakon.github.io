UNIX
====

## POSIX

Some standards and more info about them:
   POSIX, SUS, IETF, W3C, OMG


## Unix as IDE

   In an [interesting article](http://blog.sanctum.geek.nz/series/unix-as-ide/)
   on the web about how Unix serves many needs an IDE user may have, I found
   many valuable information.  I keep some notes about them, since I indent to
   use them in the near future and take advantage of them.

### Handling Files

   Some really useful switches to GNU `ls` for a developer are the following.
   Although I can find them on `ls' manual page, I duplicate this information
   here, since the operations of `ls` are enormous and searching for them is
   not an easy task!

   - `-r` -- Reverse order of output
   - `-t` -- List files in order of last-modification date
   - `-X` -- Group files by extension
   - `-v` -- Naturally sort version numbers in filenames
   - `-S` -- Sort by filesize

   Also of great interest while working with files at a working director
   is the `find` utility.  Its usage is very common and I know a lot about
   it.  But its usage is quite tricky.

   For example, here is a way to list all C files modified the last 3 days:
       ``$ find -name '*.[ch]' -mtime 3``

   Another tricky point is its `-exec` facility.  As a common example,
       ``$ find -name '*.pl' -exec perl -c {} \;``
   will execute any Perl file stored in working directory.

   If we would like to execute a command on **all** files at once, then
   we can use the `+` terminator at the end of `-exec`:
       ``$ find -name '*.[ch]' -exec vi {} +``

   I use a lot the `xargs` with the `find` results.  I had even found a way
   to perform its actions in parallel, or execute arbitrary commands, where
   the arguments can be in the middle of the command line.  But, in most
   cases this should not be necessary anymore, and it's more robust to handle
   filenames with whitespace using `-exec` or a `while read -r` loop.

### Searching Files

   Of course, the original king used to be `grep`, which I use it even now.
   But, I definitely will go for `ack-grep`, which is faster and its usage
   easier.

   An example of searching for some files and processing the output list is:

     ``$ grep -lR some_var | while IFS= read -r file; do
	    head "$file"
	 done``


### References

 - [UNIX ToolBox][toolbox]:
   An excellent HTML page that converts automatically to PDF.

[toolbox]: http://cb.vu/unixtoolbox.xhtml
