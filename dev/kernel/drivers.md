Drivers
-------

### Character Drivers ###

#### Major/Minor Numbers ####

The "major number" is the number the kernel uses to link a device file
(stored in `/dev` directory) with its driver.

The "minor number" is for internal use of the device/driver.

Within the driver the kernel can link the driver to its corresponding device
file using the ``register_chrdev()``.  Here, we only need to pass the
corresponding major number (which identifies the driver).  Later, the driver
can identify the actual device by looking at its minor number.

For example, the following devices are implemented by the `mem` module.
Here we list their major/minor numbers:

	Device		#Major	#Minor
	/dev/mem	   1	   1
	/dev/kmem	   1	   2
	/dev/null	   1	   3
	/dev/port	   1	   4
	/dev/zero	   1	   5
	/dev/full	   1	   7
	/dev/kmsg	   1	  11
	/dev/oldmem	   1	  12

This information can be also found at `drivers/char/mem.c` and by be verified by
looking at the `/dev` directory.

#### Creating Device ####

The driver when it calls the `register_chrdev()` creates at the `/dev/`
directory the appropriate device.

To create a device file outside of the kernel, the root should issue a
command like this:

      # mknod /dev/memory c 60 0

where:

 - `c` is for character device
 - 60 is its major number
 - 0 is its minor number

### Block Drivers ###

Usually, we use block drivers to implement devices that hold filesystems.
The most obvious difference between the character and block devices is that
the latter support the `lseek()` system call.
