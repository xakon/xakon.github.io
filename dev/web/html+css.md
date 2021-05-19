HTML/CSS
========

HTML
----

### span / div ###

These two HTML elements look almost similar to me.
Actually, according to Udacity's teacher, their only
difference is that `span` is _inline_ whereas `div`
is a _block_ element.

### Forms ###

Forms are defined with the element `form`.  Inside in this element,
there can be many other, form-related elements, such as `input`
(controlled by its `type` parameter, defaults to `text`).

By default, a form submits its data to the same page.  This behavior
can change with the `action` parameter to the `form` element.


CSS
---

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

### Terminology ###

 - Selectors: CSS rules
 - Element Selector:	`h2`
 - Class Selector:	`.red`
 - ID Selector:		`#nav`
