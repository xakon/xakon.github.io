XML (format)
============

Although I hate deeply XML, I have many times to cope with some data stored in
this format.  Certainly, XML is bad neither for the machine nor for the human.
Any tool that can help to handle the beast is welcome!


 - [XML Official Page](https://www.w3.org/XML/)
 - [XML FAQ](http://xml.silmaril.ie/)
 - [xmlstarlet](http://xmlstar.sourceforge.net/)
 - [xmllint](https://xmllint.com/)

### Converters ###

Many tools exist to convert XML documents to other formats:

 - [xmlto](https://pagure.io/xmlto)
 - [xsltproc](http://www.xmlsoft.org/xslt/xsltproc2.html)


Syntax
------

An XML document is a hierarchical set of markup tags.
It uses opening and closing _tags_ to define data.

 - *Document*:
   The `<xml>` _tag_ opens a _document_, and the `</xml>` _tag_ closes it.

 - *Node*:
   In parsing terminology, a _node_ is a _tag_ that contains other _tags_.

 - *Element*:
   An entity, such as `<name>Fedora</name>`, from the first `<` to the last `>`.

 - *Content*:
   The data between 2 element tags.

_Tags_ and _tag inheritance_ in an XML document are known as _schema.
