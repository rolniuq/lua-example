local list = {
	"first",
	2,
	false,
	function()
		print("fourth")
	end,
}

print(list[1])
print("this is fourth", list[4]())

local map = {
	literal_key = "a string",
	["an expression"] = "also works",
	[function() end] = true,
}

print("literal_key:", map.literal_key)
print("an expression:", map["an expression"])
print("function end:", map[function() end])
