Jenkins
=======

[Jenkis][jenkis] is the de-facto tool used for
[Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration).

Alternatives
------------

An alternative option can also be [GoCD][gocd].
It is [mentioned](2017/04/25/gocd-over-jenkins/) that GoCD is a tool for both CD/CI.
Also, there are a numerous services that provide CI services, either for paid or free.

 - [Travis CI](https://travis-ci.org/)
 - [Codeship](https://codeship.com/)


Installation
------------

```
   wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
   sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
   sudo apt-get update
   sudo apt-get install jenkins
```

More info at Jenkins Wiki page:  <https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu>


[jenkis]:	https://jenkins.io/
[gocd]:		https://www.gocd.org/
