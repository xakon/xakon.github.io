Snippets
========

Small code fragments that may be of use in the future.

The following is for Python 3:

```python
def to_str(bytes_or_str):
   if isinstance(bytes_or_str, bytes):
      return bytes_or_str.decode('utf-8')
   return bytes_or_str

def to_bytes(bytes_or_str):
   if isinstance(bytes_or_str, str):
      return bytes_or_str.encode('utf-8')
   return bytes_or_str
```

The following is for Python 2:

```python
def to_unicode(unicode_or_str):
   if isinstance(unicode_or_str, str):
      return unicode_or_str.decode('utf-8')
   return unicode_or_str

def to_bytes(unicode_or_str):
   if isinstance(unicode_or_str, unicode):
      return unicode_or_str.encode('utf-8')
   return unicode_or_str
```

A new feature of Python 3 enables us to pass arguments with keyword-only parameters:

```python
def safe_division(number, divisor, *, ignore_overflow=False, ignore_zero_division=False):
   try:
      return number / division
   except OverflowError:
      if ignore_overflow: return 0
      raise
   except ZeroDivisionError:
      if ignore_zero_division: return 0
      raise
```

In Python 2 we can emulate this feature with the following technique:

```python
def safe_division(number, divisor, **kwargs):
   ignore_overflow = kwargs.pop('ignore_overflow', False)
   ignore_zero_division = kwargs.pop('ignore_zero_division', False)
   if kwargs:
      raise TypeError('Unexpected **kwargs: %r' % kwargs)

   try:
      return number / division
   except OverflowError:
      if ignore_overflow: return 0
      raise
   except ZeroDivisionError:
      if ignore_zero_division: return 0
      raise
```

The differences between Python versions regarding the `super()` function:

```python
# Python 2
class TimesFive(MyBaseClass):
   def __init__(self, value):
      super(TimesFive, self).__init__(value)
      self.value *= 5
```
The same class can be written like this in Python 3:

```python
# Python 3
class Explicit(MyBaseClass):
   def __init__(self, value):
      super(__class__, self).__init__(value * 2)

class Implicit(MyBaseClass):
   def __init__(self, value):
      super().__init__(value * 2)
```

Here is a simple decorator to trace a function's execution:

```python
def trace(func):
   def wrapper(*args, **kwargs):
      result = func(*args, **kwargs)
      print('%s(%r, %r) -> %r' % (func.__name__, args, kwargs, result))
      return result
   return wrapper
```

This decorator is great because it can easily applied to any function:

```python
@trace
def fibonacci(n):
   'Return the n-th Fibonacci number.'
   if n in (0, 1): return n
   return fibonacci(n - 2) + fibonacci(n - 1)
```

Furthermore, this decorator can be written in an even simpler form using the
`wraps` decorator from `functools` module.

```python
import functools.wraps

def trace(func):
   @wraps(func)
   def wrapper(*args, **kwargs):
      result = func(*args, **kwargs)
      print('%s(%r, %r) -> %r' % (func.__name__, args, kwargs, result))
      return result
   return wrapper
```

A really useful context manager can be one that outputs debug information,
even when the log level has been set in a higher level.

```python
@contextmanager
def debug_logging(level):
   logger = logging.getLogger()
   old_level = logger.getEffectiveLevel()
   logger.setLevel(level)
   try:
      yield
   finally:
      logger.setLevel(old_level)
```

This context manager can become even better if we return the logger object we
created inside it:

```python
@contextmanager
def debug_logging(level, name):
   logger = logging.getLogger(name)
   old_level = logger.getEffectiveLevel()
   logger.setLevel(level)
   try:
      yield logger
   finally:
      logger.setLevel(old_level)
```
