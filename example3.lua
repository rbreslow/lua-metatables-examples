local mt = {}
mt.__index = function(table, key)
    return _G
end

setmetatable(_G, mt)

print(ausihdsauasguydasguyodgasuydaguydasy)

mt.__call = function()
    return ":)"
end

print(dfsdfsdfsdfdsfds())


asdfasdfasdfasdf.asdasffffadfdsgfdjga.sdasdasfafdsafds.print("hi")


mt.__newindex = function()
    print("i am not going to let you do anything")
end

hello = 1
test = "hello"
