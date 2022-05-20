Nginx
=====

Some notes regarding development, configuration and usage of the famous HTTP server.

Actually, [NGINX](https://nginx.com) is considered a reverse-proxy and load-balancing
server.  It happens to server HTTP traffic pretty well!

A nice presentation about [NGINX's internals][nginx-internals].

[nginx-internal]:	http://www.slideshare.net/joshzhu/nginx-internals


Resources
---------

 - [Official page](http://nginx.org)
 - [Configuration Cheatsheet](https://vishnu.hashnode.dev/nginx-cheatsheet)


I saved a great [infographic][1] about Nginx's architecture and operation,
which is also a great conclusion for its understanding of its internals.

### References ###

[1]: nginx-infographic.png


Development
-----------

### HTTP Request Processing Phases ###

A question that appears too often while working at NGINX module development is,
"which are the various phases during processing a request".  Finally, I can
have the answer to this question, thanks to this great article:
   <http://www.nginxguts.com/2011/01/phases/>

 - Server Rewrite (`NGX_HTTP_SERVER_REWRITE_PHASE`):
   URI transformation on virtual server level.

 - Find config (`NGX_HTTP_FIND_CONFIG_PHASE`)
   Lookup the proper configuration location.

 - Location Rewrite (`NGX_HTTP_REWRITE_PHASE`):
   URI transformation on location level.

 - Post-Processing (`NGX_HTTP_POST_REWRITE_PHASE`):
   URI transformation post-processing.

 - Pre-Access Restrictions Check (`NGX_HTTP_PREACESS_PHASE`).

 - Access Restrictions (`NGX_HTTP_ACCESS_PHASE`).

 - Post-Access Restrictions Check (`NGX_HTTP_POST_ACCESS_PHASE`).

 - Try Files (`NGX_HTTP_TRY_FILES_PHASE`).

 - Content Generation (`NGX_HTTP_CONTENT_PHASE`).

 - Logging (`NGX_HTTP_LOG_PHASE`).

On every phase any number of handlers can be registered, except from:

 - `NGX_HTTP_FIND_CONFIG_PHASE`
 - `NGX_HTTP_POST_ACCESS_PHASE`
 - `NGX_HTTP_POST_REWRITE_PHASE`
 - `NGX_HTTP_TRY_FILES_PHASE`

Each phase has a list of associated handlers with it.
Once registered on a phase, a handler can return one of the following values:

 - `NGX_OK` -- the request has been successfully processed.
 - `NGX_DECLINED` -- request must be routed to the next handler.
 - `NGX_AGAIN`, `NGX_DONE` -- the request has been successfully processed,
   but the request must be suspended until some event and handler must
   be called again.
 - `NGX_ERROR`, `NGX_HTTP_*` -- an error has occurred while processing the request.


### Sub-Requests ###

I discovered accidentally that there is a module or a function called `ngx_http_subrequest`.
Have a look at it someday!
