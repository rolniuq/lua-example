local func = function(name)
    return "Hello! " .. name
end

local numFunc = function(one, two)
    return one .. two
end

print(func("A"))
print(numFunc(1, 2))
print(type(numFunc(1, 2)))
