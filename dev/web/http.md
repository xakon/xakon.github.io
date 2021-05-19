HTTP
====

The main difference between a `GET` and a `POST` request is that in `GET` the
query parameters are included in the submitted URL, whereas in `POST` they are
contained in the request body.  Since there is a maximum URL length, we are
constrained in a `GET` request on the number of the passed parameters.
No such limit exists, of course, on `POST`.

Also, `GET` is usually for fetching documents, whereas `POST` is used for
updating data.  Furthermore, `GET`'s results are fine to cache and the request
shouldn't change the server data, facts that they doesn't stand for `POST`.

URLs
----

### Queries ###

A great way of reading parameters URL query parameters:

    http://example.com/foo?p=foo&z=p

This URL can be read as: "Get `foo` from `example.com` where
`p=foo` and `z=p`"

This way is very clear how the actual HTTP GET request is
being sent to the server".

### Fragment ###

A new term I am introduced to is the "URL fragment" as, for example:

    http://wwww.example.com/foo#fragment

Here `fragment` is not a query, rather it just points to a specific
element of `foo` page.  It is handled completely by the browser and
not sent as extra information to the server.

If there are both queries and fragments in a URL, then the query
should appear first and the fragment last.
