Development Server
==================

Although I currently have a bare-metal server at LeaseWeb (`titan`),
I don't fully control this machine and it will certainly expire in the near
future, even without any previous notification.  For this reason, I will start
searching for cheap alternatives.


Purpose
-------

Having a bare-metal server where I can run a dozen of other, low-traffic hosts,
for experimenting with them and acquaintance.  Some machines I need to run are:

 - FreeBSD
 - OpenBSD
 - NetBSD
 - Gentoo
 - Minix 2
 - Minix 3
 - Raspbian
 - Other ARM/MIPS machines

As these machines are going to be idle for most of the time, I can let them run
all the time:  I expect the final CPU use of the host server to not be that
high.  Of course, I should be able to easily shut down some of these machines.

Plan:
		   vCPU	RAM	Disk
	       ========================
  FreeBSD	 2	512 MB	80 GB
  OpenBSD	 2	512 MB	80 GB
  NetBSD	 2	512 MB	80 GB
  Gentoo	 2	512 MB	80 GB
  Raspbian	 2	256 MB	30 GB
  Minix 2	 2?	256 MB	30 GB		(I don't know if Minix supports SMP)
  Minix 3	 2?	256 MB	30 GB		(I don't know if Minix supports SMP)

The BSDs and/or Linux machines might expand their memory to 1 GB, if needed.
Disk seems sufficient, but I can always supply more disk.
Minix, I think, doesn't support multiple CPUs, so I might run them with 1 vCPU.

### Raspbian

First, let's check for the proper installed version of Qemu/KVM:

```
   $ qemu-system-arm -cpu ?
   # ARM1176 should be mentioned
```

We need a new kernel and the Raspbian image (get it from site).
Then we need to change some parameters in the INIT of Raspbian:

```
   $ qemu-system-arm \
	 -kernel kernel-qemu -cpu arm1176 -m 256 -M versatilepb \
	 -no-reboot -serial stdio \
	 -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw init=/bin/bash" \
	 -hda wheezy-raspbian.img
```

Edit `/etc/ld.so.preload` to comment out `libcofi_rpi.so`.

Now, the emulation can start by running:

```
   $ qemu-system-arm \
	 -kernel kernel-qemu -cpu arm1176 -m 256 -M versatilepb \
	 -no-reboot -serial stdio \
	 -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
	 -hda wheezy-raspbian.img
    # user:Passwrd == pi:raspberry
```

First step is to widen the root partition:

```
   $ qemu-img resize wheezy-raspbian.img +2G
```


Options
-------

Options for a dedicated, bare-metal server:

Requirements for server:
  4-cores
  16 GB RAM
  0.5 -- 1 TB disk

LeaseWeb
  40 EUR, but very low-performance machine

OVH
  65 EUR, quite powerful
  60 EUR, quite powerful

Hetzner
  €20,	VPS with 4 cores/16GB/180GB	https://www.hetzner.com/cloud
  €42,  Server with 6 cores/64GB/1TB	https://www.hetzner.com/dedicated-rootserver/

KimSufi
  22 EUR, Cheap machines

https://contabo.com/?show=vps
   VPS from €5

https://www.online.net/en
   Good prices for dedicated hosts


Resources
---------

 - <https://www.cyberciti.biz/faq/install-kvm-server-debian-linux-9-headless-server/>
 - <http://www.cyberciti.biz/faq/how-to-create-bridge-interface-ubuntu-linux/>
 - <https://deltahacker.gr/actsubs-libvirt-qd-cli/>
 - <https://deltahacker.gr/actsubs-libvirt-cloning-cli/>
 - <https://www.linux.com/learn/intro-to-linux/2017/5/creating-virtual-machines-kvm-part-1>
 - <https://www.linux.com/learn/intro-to-linux/2017/5/creating-virtual-machines-kvm-part-2-networking>
 - <https://www.linux.com/learn/intro-to-linux/2017/11/testing-ipv6-networking-kvm-part-1>
 - <https://www.linuxjournal.com/content/installing-and-running-headless-virtualization-server>
 - <https://www.cyberciti.biz/faq/how-to-reset-forgotten-root-password-for-linux-kvm-qcow2-image-vm/>


 References
-----------

 - [libvirt](http://www.libvirt.org/)
