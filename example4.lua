local Person = {}
Person.prototype = {}
Person.__index = Person.prototype

setmetatable(Person, {
    __call = function(self, name, age)
        return setmetatable({
            name = name,
            age = age
        }, self)
    end
})

function Person.prototype:IsAdult()
    return self.age > 18
end

local people = {
    Person("James", 8),
    Person("Peter", 10),
    Person("Kenny", 28)
}

for _,v in ipairs(people) do
    if v:IsAdult() then
        print(string.format("%s is an adult", v.name))
    else
        print(string.format("%s is a child", v.name))
    end
end
