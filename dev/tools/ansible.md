Ansible
=======

Resources
---------

 - [Home Page](https://www.ansible.com/).
 - [Opensource.com](https://opensource.com/):
   Plenty of articles about introducing Ansible, but also tutorials and
   ideas on how to use it.

A recommended reading list for Ansible is the following:

### Starting with Ansible ###

 - [Renewing my thrill at work with Ansible](https://www.redhat.com/sysadmin/renewed-thrill-ansible)
 - [Understanding YAML for Ansible](https://www.redhat.com/sysadmin/understanding-yaml-ansible)

### Beginners ###

 - [Add a repo and install a package the Ansible way](https://www.redhat.com/sysadmin/install-ansible-way)
 - [Deploying a static website with Ansible](https://www.redhat.com/sysadmin/deploying-static-website-ansible)
 - [How to use Ansible to configure Vim](https://www.redhat.com/sysadmin/ansible-configure-vim)

### Advanced ###

 - [Using Ansible to verify configurations](https://www.redhat.com/sysadmin/configuration-verification-ansible)
 - [5 ways to harden a new system with Ansible](https://www.redhat.com/sysadmin/harden-new-system-ansible)
 - [Building, saving, and loading container images with Ansible](https://www.redhat.com/sysadmin/container-images-ansible)
 - [Automate virtual machine deployment with Ansible: Design](https://www.redhat.com/sysadmin/deployment-ansible-design)
 - [Automate virtual machine deployment with Ansible: Automation](https://www.redhat.com/sysadmin/deployment-ansible-automation)


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


Tutorials
---------

At RedHat network I found a very interesting, basic and simple example of using
Ansible to deploy static Web sites using NGINX.  The article can be found
[here][redhat/deploy-static-sites] and the source code at
[Github][github/deploy-static-sites].


[redhat/deploy-static-sites]:	https://www.redhat.com/sysadmin/deploying-static-website-ansible
[github/deploy-static-sites]:	https://github.com/acritelli/enable-sysadmin-webserver


Playbooks
---------

The sections of an _Ansible Playbook_ could be:

 - `name`
 - `hosts`
 - `vars`
 - `tasks`

Of course, the main power is the `tasks` section, but the other sections can be
helpful, as well.
