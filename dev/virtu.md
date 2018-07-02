Virtualization
==============

## Manage Virtual Machines

The following notes come mostly from the following article I found at
[The Geek Stuff](http://www.thegeekstuff.com/2014/10/linux-kvm-create-guest-vm/).



## Tools

 - [qemu](www.qemu.org/)

 - virt-install, virt-clone, virsh

 - [virt-builder](http://libguestfs.org/virt-builder.1.html):
   Build virtual machine images quickly.

 - [VirtualBox](www.virtualbox.org/)

 - [DosBox](www.dosbox.com/)

 - valgrand

 - [PreTest](http://pretest.nongnu.org/):
   Pre-built virtual-machine images of FSF, POSIX-compliant OSes.


Containers
----------

A lot of discussions lately about Linux Containers, or as they are also called,
"Lightweight VMs".  Here are some tools:

 - [docker][docker]:
   It's a virtualization solution based on Linux Containers.
   It is scriptable and very fast in performing its actions.
   As I've read in an article:
   > Docker is to deployment as Git is to development.

 - [rkt][rkt]:
   An alternative to `docker`, the foundation of the [CoreOS][coreos] Project.

 - [Linux Containers (LXC)][lxc]:
   The technology that I prefer!
   The project consists of several other sub-projects.

 - LXD?


### Resources

 - <http://blog.codeship.com/getting-started-rkt/>

[coreos]:	https://coreos.com/
[lxc]:		https://linuxcontainers.org/
[rkt]:		https://coreos.com/rkt/
[docker]:	https://www.docker.com
