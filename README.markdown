luvit-JSON
==========

Luvit module for working with JSON. The code has been kidnaped from
the json4lua project. See the Makefile for details.

Author
------
This module has been by Craig Mason-Jones for the json4lua project
and adapted to luvit by pancake<nopcode.org>

Installation
------------
To compile and install this module you need to run 'make' and specify the
path to the modules directory in the 'at' make variable.

	make install at=/path/to/modules

Example
-------
This is simple test case using JSON api from luvit

	local JSON = require("JSON")
	o = {}
	o.foo="bar"
	o.bar="foo"
	encoded = JSON.encode(o)
	p(encoded)
	p(JSON.decode(encoded))

Will show:

	"{"foo":"bar","bar":"foo"}"
	{ foo = "bar", bar = "foo" }
