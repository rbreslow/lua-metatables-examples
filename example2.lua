local inspect = require 'inspect'

mt = {}
mt.__add = function(a,b)
    return a.value + b.value
end

t1 = {value = 2}
setmetatable(t1, mt) 

t2 = {value = 2}
setmetatable(t2, mt) 

print(t1 + t2)
-- print(inspect(t2))

