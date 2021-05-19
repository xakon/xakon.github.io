Web Application Design
======================

### Health Check ###

I recently read in an [article][health-check], that it is useful to add a
dedicated URL in a Web application, to report the health of the system.
Actually, it doesn't have to do a lot of things, maybe verify database
connections are up and running and other similar services and return an empty
page with `HTTP/200`.

There is also a free service, [UptimeRobot](https://uptimerobot.com/), that
regularly monitors Web sites by visiting this specific URL.  In the service
itself we can see the uptime of the sites and receive email notifications in
case a site is down.

[health-check]:		https://nickjanetakis.com/blog/create-a-health-check-url-in-your-web-app-and-monitor-its-uptime

### Well-Known ###

The `/.well-known` URL path prefix is a reserved name space for serving
particular static files used by other systems that might interact with a site.
It was established by [RFC 5785](https://tools.ietf.org/html/rfc5785) and
updated in [RFC-8615](https://tools.ietf.org/html/rfc8615).  IANA maintains a
list of possible files in the [Well Known URIs registry][iana-well-known].

Some examples are:

 - `/.well-known/acme-challenge`:  used by Let's Encrypt and ACME protocol.
 - `/.well-known/apple-app-site-association`:  allow links to open an iOS app.
 - `/.well-knwon/assentlinks.json`:  links to open on Android phones.
 - `/.well-knwon/security.txt`:  host company's security policy.

Nick Janetackis also has an example of similar URLs:

 - `/terms`:  list the conditions of using the site
 - `/privacy`:  security-related information for the site
 - `/healthy`:  self-checks for the uptime of a site

[iana-well-known]:	https://www.iana.org/assignments/well-known-uris/well-known-uris.xhtml

### HTTP Headers ###

Modern browsers can find problems on web sites and report back to them.
They can use the `Report-To` header field to send a request, when they spot a
problem with a web site.  There is also a custom service that supports this
browser feature, called [report-uri.com](https://report-uri.com/).
