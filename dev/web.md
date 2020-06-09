Web Development
===============

### Tools

   * [Pingdom Website Speed Test](https://tools.pingdom.com/):
     It measures the speed of a Web page and recommends some solutions.

   * [Selenium](http://seleniumhq.org/)
     Software testing framework for web applications.

   * [No Design Development](https://nodesign.dev/):
     A collection of resources and auto-generated art/design for Web sites, for
     developers that have little to no artistic talent.

   * Abduction (Firefox Extension)
     Screenshots of Web pages

   * [Varnish](https://www.varnish-cache.org/): "Web Accelerator" which a
     sysadmin can use to speed a website.  It can cache certain static
     elements, such as images or javascript, but one can also use it for
     other purposes such as Load Balancing or some additional security.

   * [G-WAN Web Server](http://gwan.com/):
     The fastest web server ever!

   * [Turbolinks](https://github.com/turbolinks/turbolinks):
     A JavaScript library that makes navigating a Web application faster.
     It gives to the user the impression that a server-rendered application is a
     Single-Page Application.  It works with many frameworks, but also with
     static sites.


### Frameworks

   * [webalchemy](https://github.com/skariel/webalchemy):
     Realtime, Pythonic web framework.

   * [verlure](https://github.com/bbangert/velruse):
     Simplifying third-party authentication for web applications.

   * [Piwik](http://piwik.org/): An alternative to Google's Analytics,
     running locally on the deployed web server.  There is also a handfull
     [demo](http://demo.piwik.org/).

   * [django-tastypie](http://tastypieapi.org/):
     Webservice API framework for Django. It provides a convenient, yet
     powerful and highly customizable abstraction for creating REST-style
     interfaces.

   * [flask-restful](https://github.com/twilio/flask-restful):
     Simple framework for creating REST APIs.

   * [flask-foundation](https://github.com/JackStouffer/Flask-Foundation):
     A solid foundation for web application.

   * [flask-slither](http://github.com/gevious/flask_slither):
   A small library between MongoDB and JSON API endpoints.


   * [Bottle](http://bottlepy.org/):
   A fast, simple and lightweight WSGI micro web-framework.  Build small
   websites and REST APIs in seconds.  All the framework is just one `.py` file
   that you can drop in your directory.


### REST

These days RESTful services are very common on Web and mobile applications.
Even me has been asked once to implement some of their kind!

I found an interesting article, where the author shows how one can easily and
quicly implement some simple REST services using only
[Nginx](http://nginx.org/) and [PostgreSQL](http://www.postgresql.org/):
[Simple API with Nginx and PostreSQL](http://rny.io/nginx/postgresql/2013/07/26/simple-api-with-nginx-and-postgresql.html).

### URLs

#### Queries

A great way of reading parameters URL query parameters:

    http://example.com/foo?p=foo&z=p

This URL can be read as: "Get `foo` from `example.com` where
`p=foo` and `z=p`"

This way is very clear how the actual HTTP GET request is
being sent to the server".

#### Fragment

A new term I am introduced to is the "URL fragment" as, for example:
    http://wwww.example.com/foo#fragment

Here `fragment` is not a query, rather it just points to a specific
element of `foo` page.  It is handled completely by the browser and
not sent as extra information to the server.

If there are both queries and fragments in a URL, then the query
should appear first and the fragment last.

### HTTP

The main difference between a `GET` and a `POST` request is that in `GET` the
query parameters are included in the submitted URL, whereas in `POST` they are
contained in the request body.  Since there is a maximum URL length, we are
constrained in a `GET` request on the number of the passed parameters.
No such limit exists, of course, on `POST`. and a `POST`

Also, `GET` is usually for fetching documents, whereas `POST` is used for
updating data.  Furthermore, `GET`'s results are Ok to cache and the request
shouldn't change the server data, facts that they doesn't stand for `POST`.

### HTML

#### span / div

These two HTML elements look almost similar to me.
Actually, according to Udacity's teacher, their only
difference is that `span` is _inline_ whereas `div`
is a _block_ element.

#### Forms

Forms are defined with the element `form`.  Inside in this element,
there can be many other, form-related elements, such as `input`
(controlled by its `type` parameter, defaults to `text`).

By default, a form submits its data to the same page.  This behavior
can change with the `action` parameter to the `form` element.

### CSS

CSS styles can be defined using 3-ways:
 - Inline styles: the style is defined inside the HTML element,
   using the `style` attribute.
   The various style properties are separated using semicolons.

 - Internal stylesheets: inside the document (using in the `<head>` section),
   `style` elements let include a normal CSS specification.

 - External stylesheets: all the CSS definitions are in a separate file,
   which is linked in the source HTML file with the `link` element.

Of course, the most preferred method is the last one.
Sometimes, it may be appropriate to use any of the other two methods, too.

#### Terminology

 - Selectors: CSS rules
 - Element Selector:	`h2`
 - Class Selector:	`.red`
 - ID Selector:		`#nav`
