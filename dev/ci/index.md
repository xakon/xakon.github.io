Continuous Integration (CI)
===========================

Nowadays, there are plenty of tools for CI, either online or on-premises.
I list a few of them here, for some of the tools I have dedicated notes.

Tools
-----

### On-Premises ###

The following list is a summary of the _DigitalOcean_'s article,
[CI/CD Tools Comparison](https://www.digitalocean.com/community/tutorials/ci-cd-tools-comparison-jenkins-gitlab-ci-buildbot-drone-and-concourse).

#### Jenkins ####

[Jenkins](https://jenkins.io/) is the industry standard for CI tools.
It is written in Java and can be configured either using the UI or some other
plugins.  Actually, most of its functionality comes with the plugins.
It also has a custom configuration language, based on
[Groovy](http://groovy-lang.org/), to set up the tool, and more importantly, the
_pipelines_, a modern way of setting up and using _Jenkins_.

#### Buildbot ####

[Buildbot](https://buildbot.net/) is a powerful CI system, written in and
[Python](https://python.org) and used by the project to ensure that the
interpreter works on many different platforms.  Its configuration is rather
complex, but it is done using Python.


#### Gitlab CI ####

Part of [Gitlab](https://gitlab.com), the _Gitlab CI_ can be used either online
or installed on-premises.  It is one of the most powerful systems, and it
supports many different types of runners.  The configuration is made using YAML.
