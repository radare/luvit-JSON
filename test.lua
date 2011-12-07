local JSON = require("JSON")

o = {}
o.foo="bar"
o.bar="foo"
encoded = JSON.encode(o)
p(encoded)
p(JSON.decode(encoded))
