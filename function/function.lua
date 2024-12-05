local function hello(name)
    print("hello!", name)
end

local greet = function(name)
    print("greet!", name)
end

local higher_order = function(name)
    return function(another)
        print("hello!", name, another)
    end
end

hello("quinlor")
greet("quinlor")
higher_order("quinlor")("handsome")

local multiple_return = function()
    return 1, 2, 3, 4
end

local one, two, three, four = multiple_return()
print(one, two, three, four)

local variable_arguments = function(...)
    local arguments = { ... }

    for key, value in ipairs({ ... }) do
        print(key, value)
    end

    return table.unpack(arguments)
end

variable_arguments("one", "two", "three")
