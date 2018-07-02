Bash
====

### Word Modifiers

Related to the next section, *History*, there are some word modifiers that can
alter the previous commands.  I constantly need them, so here is a short
reference:

```
   :p		print command, don't execute
   :h		remove trailing file name, leave only HEAD (directory)
   :t		remove all leading file name, leave only TAIL (filename)
   :r		remove trailing suffix, leave only basename (remove file extension)
   :e		remove all but the trailing suffix (keep file extension)
   :s		substitute first match
   :g		substitute all matches
   :q		quote previous arguments
```

### History

These tips are well-known but I fairly can remember them when I need to use them!
I can only remember reaching the last argument (`!$`) from the previous command (`!!`).
Of course, I can have the first arguments (`!:1`) or the one before the last (`!-2$`),
although the syntax might not be so perfect!

    $ cp foo.dat foo.db
    $ db !$ s 1 joe joe@example.com
    db foo.db s 1 joe joe@example.com
    $ db !:1 s 2 !-2$ john@example.com
    db foo.db s 2 joe john@example.com

While trying to execute a command in history using the "fast searching" shortcut (`!<str>`),
it's better to append the print argument (`:p`) to it:

```
    $ !/sbin:p
    /sbin/ifconfig eth0
    $ !!
    /sbin/ifconfig eth0
    eth0	Link encap:Ethernet	HWaddr 00:0C:29:95:AB:90
    		inet addr:192.168.127.129  Bcast: ...
```

Similar functions exist for getting dirname, filename, extension of path:

```
    $ du -sh /home/tom/work/doc.txt
    $ cd !$:h
    cd /home/tom/work

    $ ls /home/tom/work/doc.txt
    $ document=!$:t
    document=doc.txt

    $ vi /home/tom/work/doc.txt
    $ stripext=!$:r
    stripext=/home/tom/work/doc

    $ vi /home/tom/work/doc.txt
    $ extonly=!$:e
    extonly=.txt
```

Great Tip:  I know I can substitute previous command with another text::

```
    $ cl named.conf{,-orig}
    cl named.conf named.conf-orig
    bash: cl: command not found
    $ ^cl^cp
    cp named.conf named.conf-orig
```

But, its greatest application is when using programs that accept a `-n` or `--dry-run`
switch to only print their actions:

```
    $ make -n dlstubs
    cc     dlstubs.c   -o dlstubs
    $ ^-n
    make dlstubs
    cc     dlstubs.c   -o dlstubs
```


### Defensive BASH Programming

I've read a great article about [Programming Defensively in BASH][defensive].
There are many nice tricks and tips in this article.

```bash
readonly PROGNAME=$(basename "$0")
readonly PROGDIR=$(readlink -m $(dirname "$0"))
readonly ARGS="$@"

change_owner_of_file() {
   local filename=$1
   local user=$2
   local group=$3

   chown $user:$group $filename
}

eexit() {
   local error_str="$@"

   echo $error_str
   exit 1
}
```

TODO:  document the trick of temp file removal in a single line!


### Resources

TODO:  add the article with Bash examples I copied in the *History* section.

Here are some useful articles about Bash techniques, tips and tricks:

 - [Programming Defensively in BASH][defensive]
 - [Advancing in the Bash Shell][advanced-bash]
 - [How "Exit Traps" Can Make Your Bash Scripts Way More Robust And Reliable][exit-traps]


[advanced-bash]:	http://samrowe.com/wordpress/advancing-in-the-bash-shell/
[defensive]:		http://www.kfirlavi.com/blog/2012/11/14/defensive-bash-programming/
[exit-traps]:		http://redsymbol.net/articles/bash-exit-traps/
