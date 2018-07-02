Qemu + KVM
==========

Some about about Qemu + kvm.

## Manual

 - [Official Qemu Manual][1]
 - [Linux KVM][9]


## Tutorials

 - [Qemu Build Tutorial][2]
 - [Using QEMU Ubuntu Tutorial][3]
 - [Using qemu to Boot an Emulated Odroid][4]
 - [ArchLinux Wiki][5]
 - [Debian QEMU][8]
 - [Debian KVM][7]
 - [The Geek Stuff][6]

## Links

[1]: http://wiki.qemu.org/Manual
[2]: http://www.coreboot.org/QEMU_Build_Tutorial
[3]: http://mikelev.in/2010/07/using-qemu-ubuntu-tutorial/
[4]: http://odroid.us/mediawiki/index.php?title=Step-by-step_Using_qemu_to_Boot_an_Emulated_Odroid
[5]: https://wiki.archlinux.org/index.php/KVM
[6]: https://wiki.archlinux.org/index.php/KVM
[7]: https://wiki.debian.org/KVM
[8]: https://wiki.debian.org/QEMU
[9]: http://www.linux-kvm.org/

## Commands

Commands found at coreboot.org, but no idea of what.
Should be checked again later!

```shell
   $ qemu-img create -f raw disk.img 8G
   $ mkfs.ext4 -j -F disk.img

   # mkdir /mnt/rootfs
   # mount -o loop disk.img /mnt/rootfs

   # mkdir /mnt/rootfs/boot
   # cp vmlinuz initrd /mnt/rootfs/boot/

   # cp -R /* /mnt/rootfs	# or, even better
   # debootstrap --arch i386 sarge /mnt/rootfs http://ftp.debian.org/debian/

   # echo 'id:1:initdefault:' > /mnt/rootfs/etc/inittab

   # umount /mnt/rootfs

   $ qemu -bios path/to/coreboot.rom -hda disk.img -nographic
```

How to create a Windows installation:

```shell
   $ qemu-img create winxp.img 12G
   $ qemu -hda winxp.img -cdrom win.iso -m 1024 -boot d
   $ qemu -hda winxp.img -m 1024 -boot c # -nographic
```

How to create a Plan9 VM:

```shell
   $ qemu-img create -f qcow2 9front.qcow2.img 20G
   $ qemu -hda 9front.qcow2.img -cdrom 9front.iso -boot d -vga std -m 768
   $ qemu -hda 9front.qcow2.img -boot c -vga std -m 768
```
