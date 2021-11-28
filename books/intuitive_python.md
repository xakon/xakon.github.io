Intuitive Python
================

    Intuitive Python
    David Muller
    Pragmatic Bookshelf, 2021
    978-1-68050-823-9


Highlights
----------

 - `flake8-bugbear`

 - `tempfile.TemporaryDirectory()`:  temp directory will be auto-removed after
   the destruction of the Python object, together with its contents.  No need
   for extra `shutil.rmtree()`.

 - `zoneinfo` package from Python 3.9 to work with timezone-aware `datetime`
   objects, and its backported version for other Python versions,
   `backport.zoneinfo`.

 - [Apache Parquet], a columnar storage format for serialization of multiple
   records (replacement of CSV).

 - `pip install --require-hashes`.  Where to find the hashes?  Usually in PyPI.
   `poetry` supports, of course, the hashes natively.

[Apache Parquet]:	https://parquet.apache.org/
