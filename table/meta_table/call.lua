local t = {}
local mt = {
	__call = function(table, ...)
		local args = { ... }
		return "Called with " .. table.concat(args, ", ")
	end,
}

setmetatable(t, mt)

print(t(1, 2, 3)) -- Output: Called with 1, 2, 3
