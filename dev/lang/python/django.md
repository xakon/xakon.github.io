Django
======

Resources
---------

 - [Django Site](https://www.djangoproject.com/)

 - [Django Packages](https://www.djangopackages.com/):
   Find reusable Django applications.

 - [Django Snippets](https://djangosnippets.org/):
   A huge collection of useful Django code snippets.

 - [Django Source](https://github.com/django/django)

 - [User Authentication Example][auth-example]


[auth-example]:	http://blog.narenarya.in/right-way-django-authentication.html


### Tutorials

 - [Getting Started with Django](http://www.gettingstartedwithdjango.com/):
   A list of videos teaching basic and advanced use of Django.



Applications
------------

In Django, every _application_ is a separate Python package, and it can add and
supply extra functionality to its users.  Some useful _applications_ for
development are:

 - [django-extensions](https://github.com/django-extensions/django-extensions):
   Tons of useful stuff.

 - [django-debug-toolbar](https://github.com/jazzband/django-debug-toolbar):
   Debug toolbar that will show interesting information, like debug messages,
   SQL queries, etc.

 - [django-builder](https://github.com/mmcardle/django_builder):
   Automatically generate *everything* from custom models.


Snippets
--------

### Log queries in Console

Either use the `django-debug-toolbar` while working on the `admin` app,
or use the following logger to print the SQL statements in console:

```python
LOGGING['loggers']['django.db.backends']['level'] = 'DEBUG'
```

### Limit extra queries at relations

Use the `list_select_related` field in a model.  Every time Django needs
to load data for a table, it pre-loads data from the related table.