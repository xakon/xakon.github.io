Ansible
=======

Resources
---------

 - [Home Page](https://www.ansible.com/).
 - [Opensource.com](https://opensource.com/):
   Plenty of articles about introducing Ansible, but also tutorials and
   ideas on how to use it.


Miscellaneous
-------------

Install the latest version in Debian/Ubuntu:

```
   $ sudo apt-add-repository ppa:ansible/ansible
   $ sudo apt-get update && sudo apt-get install ansible
```

In one of the articles read at [Opensource.com][1], I learned about the
`ansible-pull`, which is part of Ansible.  This utility let us run Ansible
locally from a machine, download code from a Git repository and apply it
locally.


[1]:	https://opensource.com/article/18/3/manage-workstation-ansible
