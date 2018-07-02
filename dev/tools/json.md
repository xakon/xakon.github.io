JSON (format)
=============

JSON is a new format for storing and exchanging data (much better than XML).
Although it's quite readable, there are some times where it's not so
readable at the command-line.  At the rescue comes a great tool,
[jq](http://stedolan.github.io/jq/), which, among other operations, let us
pretty-print our JSON data.
    jq '.' file.json
Besides pretty printing, `jq` can also select, filter, and format JSON data.

While JSON is a great format for interchanging data, it's rather unsuitable for
most command-line tools. Not to worry, we can easily convert JSON into CSV
using [json2csv](https://github.com/jehiah/json2csv).

Since I hate XML, why not convert any data from it to JSON?
Use for this purpose [xml2json](https://github.com/parmentf/xml2json).


 - [Online CSV tools](https://onlinecsvtools.com/)
