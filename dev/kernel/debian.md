#### Debian ####

Creating a minimal, base Debian system is easily done thanks to the tool
`debootstrap` produced by the `Debian` community.  This tool downloads and
installs on a given directory a complete, yet minimal, Debian distribution
without any kernel.

``debootstrap`` needs root privileges to perform the installation, so all
relevant commands will be shown as been executed by the root.

So, first thing we should do is create a new filesystem, which will host the
root filesystem of the new system.  It's much easier and better to use a
separate file for hosting this new filesystem.  I've done this procedure in
the past and it's not difficult at all.  More information can be found at my
blog [Create a Filesystem on a File][filesys-file]:

      $ mkdir -p /tmp/mounts/debian
      $ dd if=/dev/zero of=root_fs bs=1M count=512
      $ mkfs.ext4 -j root_fs
      # mount -o loop root_fs /tmp/mounts/debian
      # debootstrap squeeze /tmp/mounts/debian/ http://ftp.gr.debian.org/debian

The new, minimal Debian needs to be configured.  Let only one getty being
started at init time (/etc/inittab) and mount some filesystems when the
system boots (/etc/fstab).

After finishing configuration of new Debian system, we can safely unmount
the filesystem and let the development procedure carry on::

      # umount /tmp/mounts/debian/

Finally, we just need to install a kernel and its modules to the new system::

      # make ARCH=um modules_install INSTALL_MOD_PATH=/tmp/mounts/debian/

##### Resources #####

 - <http://www.debian.org/releases/stable/i386/apds03.html.en>
 - [Create a Filesystem on a File](filesys-file)


[filesys-file]:   https://printf2linux.wordpress.com/2012/02/13/create-a-filesystem-on-a-file/
