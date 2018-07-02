======================
Linux Containers (LXC)
======================

The containers technology I prefer!
The project consists of several other sub-projects.

Homepage:	https://linuxcontainers.org/


Resources
---------

Some useful links and tutorials:

 - `Ubuntu LXC Comprehensive Guide <https://help.ubuntu.com/12.04/serverguide/lxc.html>`_
 - https://blog.no-panic.at/2016/08/11/a-clean-start-how-to-prepare-a-minimal-debian-template-for-lxc-containers/
 - http://www.unixmen.com/setup-linux-containers-using-lxc-on-ubuntu-15-04/
 - https://www.cyberciti.biz/faq/how-to-install-lxd-container-under-kvm-or-xen-virtual-machine/


Tools
-----

Some other tools to work with `Linux Containers`:

 - `LXC Web Panel <http://lxc-webpanel.github.io/>`_

Tutorial
--------

 - Install Ubuntu Packages:  `apt-get install lxc lxctl lxc-templates`.
 - Check installation:  `lxc-checkconfig`.
 - List available templates:  `ls /usr/share/lxc/templates`.
 - List running containers:  `lxc-ls`.
 - View details of container:  `lxc-info -n CONTAINER`.
 - Create container from template:  `lxc-create -n CONTAINER -t TEMPLATE`.
 - Clone container:  `lxc-clone SOURCE DEST`.
 - Start container:  `lxc-start -n CONTAINER -d`.
 - Stop container:  `lxc-stop -n CONTAINER`.
 - Delete container:  `lxc-destroy -n CONTAINER`.
 - Log into the container:  `lxc-console -n CONTAINER`.
 - Take snapshot (stored in `/var/lib/lxcsnaps/`):  `lxc-snapshot -n CONTAINER`.
 - Restore snapshot:  `lxc-snapshot -n CONTAINER -r SNAPSHOT`
