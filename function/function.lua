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
