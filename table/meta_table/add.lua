-- add
local t1 = { value = 10 }
local t2 = { value = 20 }
local mtAdd = {
	__add = function(a, b)
		return { value = a.value + b.value }
	end,
}

setmetatable(t1, mtAdd)
setmetatable(t2, mtAdd)

local resultAdd = t1 + t2
print(resultAdd.value)
