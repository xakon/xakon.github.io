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


Tools
-----

### jq ###

[jq](https://stedolan.github.io/jq/) is a lightweight and flexible command-line
JSON processor.  It's a great and powerful tool, but it's syntax is difficult
for me to remember.

There is a [jq-tutorial](https://github.com/rjz/jq-tutorial) with interactive
exercises.

Here is a reference of its syntax, based on the valuable article,
[Introduction to JQ](https://earthly.dev/blog/jq-select/):

Select the `root` document, a field from the `root` document, a field from an
object, a field for each object from an array, a specific object from an array:

    jq '.'
    jq '.name'
    jq '.owner.name'
    jq '.[].name'
    jq '.[4]'

Selecting multiple filters separated by commas:

    jq '.[].title, .[].number'
    jq '.[] | .title, .number'

It can also return raw data, not pretty-printed.

    jq -r '.[]'

Except of filtering, it can also construct JSON documents from the input.
For example, creating an array of the elements:

    jq '[ .[].title ]'

Putting elements inside a JSON object:

    jq '{ "first_naem": .[0], "last_name": .[2] }'
    jq '{ title: .title, number: .number, labels: .labels }'

There are built-in functions that manipulate the generated data:

    jq '.title | length'
    jq '.number | tostring'
    jq '{ title: .title, number: .number, labels: .labels | sort }'
    jq '{ title: .title, number: .number, labels: .labels | length }'

Other useful filter functions are `map` and `select`.
