local inspect = require 'inspect'

num = 1
str = "hello"
func = function() return "hello" end
tbl = {"hello", lol = "hello"}

print(inspect(tbl))

print(inspect(_G))
