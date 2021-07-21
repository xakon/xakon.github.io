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

 - [Django Tricks](https://www.djangotricks.com/tricks/)

- [An example Django + Docker app](https://github.com/nickjj/docker-django-example):
  A demo of a Django application with setup for various aspects:  Database migrations,
  CI pipeline, Docker, etc.


[auth-example]:	http://blog.narenarya.in/right-way-django-authentication.html


### Tutorials

 - [Getting Started with Django](http://www.gettingstartedwithdjango.com/):
   A list of videos teaching basic and advanced use of Django.

 - [Django Girls](https://djangogirls.org/):
   Many useful resources for programming in general, famous for their online
   [tutorial](http://tutorial.djangogirls.org/)

 - [Django for Beginners](http://djangoforbeginners.com/):
   Online book with some chapters free.  Demos of sample Django applications.

 - [Django ORM if you already know SQL](https://dev.to/amitness/django-orm-if-you-already-know-sql-k80):
   A practical reference of SQL and Django ORM queries.  Especially useful,
   as I always forget which Django constructs are necessary to create
   an equivalent SQL query.


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


Custom User
-----------

Django provides us out of the box with a `User` model class, ready to be used in
our project.  But, it might not always be ideal for our use case.  There are a
few techniques to use a different model class.

Even though it's possible to switch to a custom user class in the middle of the
development, it is better to start with a custom model class from the beginning.

Some useful resources about this aspect:

 - [Creating a Custom User Model in Django](https://testdriven.io/blog/django-custom-user-model/)
 - [Django Best Practices: Custom User Model](https://learndjango.com/tutorials/django-custom-user-model)

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

### Use annotation() and SQL expressions ###

This is how we can get a duration of 2 events:

```python
duration = ExpressionWrapper(F('beginning') - F('end'), output_field=DurationField())
events = Event.objects.annotate(duration=duration)
events[0].duration
# datetime.timedelta(days=1, seconds=84900, microseconds=504694)
```
