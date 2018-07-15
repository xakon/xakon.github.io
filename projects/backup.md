Backup Server
=============

I plan to create a local Backup Server that uses external, USB drives for storage,
and a VPS or an online Backup Service.  Another approach would be to get a free
NAS server and install 2 or 4 disks in it.  This solution would cost around 1
year of VPS costs.  Downside:  I can't use it for hosting.

Two kinds of data:  those that frequently change and it is necessary to be restored
fast (source code, documents, exercises, configurations), and *static* data
that don't change and are not so important, like videos, photos, etc.

Static data need only to be saved in the external disk, and updated *only* when
the source has changed (almost never).  But if the source is deleted, then **always**
keep the backup.  For this reason a dump machine with a USB external storage and
`rsync(1)` are more than enough.

In the online service I need to employ a different scheme, with monthly full backups
and weekly (2-3 times per week) incremental snapshots.

OVH Cloud and [hubiC](http://hubic.com) have Cloud Storage solutions up to 10TB
for €5 per month!  Perfect for backup, but also to store all of my files there.

Resources
---------

<http://www.mikerubel.org/computers/rsync_snapshots/>
<http://rsnapshot.org>
<https://www.linux.com/learn/managing-encrypted-backups-linux-part-1>
<https://spideroak.com/>
