-- index
local t = {}
local mt = {
	__index = function(table, key)
		return "key " .. key .. " does not exist"
	end,
}

setmetatable(t, mt)

-- The __index metamethod in the metatable is triggered when a key is not found in the table.
print(t.unknown)
