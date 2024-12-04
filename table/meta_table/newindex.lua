local t = {}
local mt = {
	__newindex = function(table, key, value)
		error("Cannot modify read-only table!")
	end,
}

setmetatable(t, mt)

print(t.key)

t.key = "value" -- Error: Cannot modify read-only table!
