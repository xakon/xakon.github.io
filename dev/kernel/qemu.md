### QEmu/KVM ###

We can get the source code of Qemu and build it.

   $ git clone git://git.qemu.org/qemu.git

#### Resources ####

 - <git://git.qemu.org/qemu.git>
 - <http://static.usenix.org/event/usenix05/tech/freenix/full_papers/bellard/bellard_html/>
 - <http://mikelev.in/2010/07/debootstrap-howto-debian-qemu/>
 - <http://blog.vmsplice.net/2011/03/qemu-internals-big-picture-overview.html>
 - <http://blog.vmsplice.net/2011/03/qemu-internals-overall-architecture-and.html>

 - [virtme](https://github.com/amluto/virtme/)

 - [Booting a Custom Linux Kernel in QEMU and Debugging it with GDB][nick-post]
 - [Debugging a kernel in QEMU/libvirt](https://access.redhat.com/blogs/766093/posts/2690881)
 - [Setting up Qemu-KVM for kernel development][collabora]


[nick-post]:	https://nickdesaulniers.github.io/blog/2018/10/24/booting-a-custom-linux-kernel-in-qemu-and-debugging-it-with-gdb/
[collabora]:	https://www.collabora.com/news-and-blog/blog/2017/01/16/setting-up-qemu-kvm-for-kernel-development/

<http://www.linux-kvm.org/wiki/images/b/bc/2011-forum-armbru-qdev.pdf>
<http://www.linux-kvm.org/wiki/images/f/fe/2010-forum-armbru-qdev.pdf>
<http://www.linuxplumbersconf.org/2011/ocw/sessions/243>
<http://www.beyondlogic.org/usbnutshell/usb1.shtml>
<http://www.usbmadesimple.co.uk/>


### Tips

Some tips extracted from the [Collabora's article][collabora]:

    qemu-img create $IMG 2g
    mkfs.ext2 $IMG
    mkdir $DIR
    mount -o loop $IMG $DIR
    debootstrap --arch amd64 jessie $DIR
    umount $DIR

    make x86_64_defconfig
    make kvmconfig
    make -j8

    qemu-system-x86_64 -kernel bzImage \
                       -hda $IMG \
		       -append 'root=/dev/sda single' \
		       --enable-kvm \
		       --nographic
