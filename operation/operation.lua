local a = { x = 1 }
local b = { y = 1 }

print(a ~= b)

print(a == b)

print(not a)
print(not false)
print(not nil)

local max = a and b
print(max)
