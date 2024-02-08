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
 - `/.well-known/change-password`:  redirect to a "Change Password" screen.
   Still, under proposal phase.

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

### Rate Limiting ###

Each application deployed at the Web needs to support some kind of rate-limiting.
But, this task shouldn't be handled at the application level, even though it's possible to do it
with many libraries and frameworks.
It's better to set the rate-limiting at the load-balancer or the reverse-proxy.

Here is a useful article, [Rate-limiting with Nginx](https://rednafi.com/go/rate_limiting_via_nginx/),
explaining the technique using a Web application written in Go, and serving content behind an Nginx
reverse-proxy.  The source code, which could be used as a starting reference point,
can be found at [Github](https://github.com/rednafi/nginx-ratelimit).

Actually, it will not hurt if we add rate-limiting at both levels.
But it's more important that the load-balancer or the proxy provides such facilities,
as the rate-limiting at application level is usually more expensive in resources.

### Harass botnets ###

Instead of blocking IP addresses that hit honeypot URLs, we can send enormous data back to the
botnets, making them crash with out-of-memory errors.  Or, at least, we will let them spend their
bandwidth without touching our application.

A clever such trick in Nginx could be written like this:

```nginx
location /wp-login.php {
    return 301 "https://speed.hetzner.de/10GB.bin";
}
```

This idea, found [here](https://genau.qwertqwefsday.eu/notes/9pbhb6nc35), is a safe variation of
the article of [Jamie Zawinski](https://www.jwz.org/blog/2024/02/harassing-botnets-with-zipbombs/).

### Web Site as Application ###

Modern browsers can open Web sites as standalone applications, especially useful
in mobile devices.  To achieve such effect we need a
[Web Application Manifest](https://developer.mozilla.org/en-US/docs/Web/Manifest),
which can look like this:

```json
{

  "display": "standalone",
  "scope": "https://example.com/site"
}
```

More information and other interesting options, like application name and icon,
can be found at Mozilla's documentation.

### Basic styling ###

Nice ideas from the article, [Web Design in 4 minutes](https://jgthms.com/web-design-in-4-minutes/):

First, center body text.  Long lines can be hard to parse and read.

```css
body {
   margin: 0 auto;
   max-width: 50em;
}
```

Then, set the default font.  In browser, default style is "Times", which looks
unappealing.  A sans-serif font can vastly improve the look of the page.

```css
body {
   font-family: "Helvetica", "Arial", sans-serif;
}
```

If we want to stick with a serif font, then "Georgia" is a good option.

When a page looks "broken" to a user, it's usually a spacing issue. Providing
space both around and within your content can increase the appeal of your page.

```css
body {
   line-height: 1.5;
   padding: 4em 1em;
}

h2 {
   margin-top: 1em;
   padding-top: 1em;
}
```

Black text on a white background can be harsh on the eyes.
Opting for a softer shade of black for body text makes the page more **comfortable** to read.

```css
body {
   color: #555;
}
```

And in order to keep a decent level of **contrast**,
let's pick a darker shade for **important** words:

```css
h1, h2, strong {
   color: #333;
}
```

It only takes a few additional touches to correct the balance of the page:

```css
code, pre {
   background: #eee;
}

code {
   padding: 2px 4px;
   vertical-align: text-botton;
}

pre {
   padding: 1em;
}
```

Most brands have a **primary color** that acts as a visual accent.
On a website, this accent can be used to provide emphasis on interactive
elements, like **links**:

```css
a {
   color: #e81c4f;
}
```

The accent color can be complemented with more _subtle_ shades,
to be used on borders, backgrounds, or even the body text.

```css
body {
   color: #566b78;
}

code, pre {
   background: #f5f7f9;
   border-bottom: 1px solid #d8dee9;
   color: #a7adba;
}

pre {
   border-left: 2px solid #69c;
}
```

A _custom font_ gives the page of even more noticeable identity.
While we can embed our own webfont or use an online service like
[Typekit](https://typekit.com/), let's use "Roboto" from the free
[Google Fonts](https://fonts.google.com/) service:

```csss
@import 'https://fonts.googleapis.com/css?family=Roboto:300,400,500';

body {
   font-family: "Roboto", "Helvetica", "Arial", sans-serif;
}
```

The header is nice to be enhanced with a nice background image:

```css
header {
   background-color: #263d36;
   background-image: url("header.jpg");
   background-position: center top;
   background-repeat: no-repeat;
   background-size: cover;
   line-height: 1.2;
   padding: 10vw 2em;
   text-align: center;
}
```

Also a logo:

```css
header img {
   display: inline-block;
   height: 120px;
   vertical-align: top;
   width: 120px;
}
```

And some further enhancement of the text styles:

```css
header h1 {
   color: white;
   font-size: 2.5em;
   font-weight: 300;
}

header a {
   border: 1px solid #e81c4f;
   border-radius: 290486px;
   color: white;
   font-size: 0.6em;
   letter-spacing: 0.2em;
   padding: 1em 2em;
   text-transform: uppercase;
   text-decoration: none;
   transition: none 200ms ease-out;
   transition-property: color, background;
}

header a:hover {
   background: #e81c4f;
   color: white;
}
```
