local function add(first, second)
	return first + second
end

local function sub(first, second)
	return first - second
end

local function mul(first, second)
	return first * second
end

local function div(first, second)
	return first / second
end

local function main()
	print("Please in put the first value:")
	local first = io.read("*n")

	print("Please input the second value:")
	local second = io.read("*n")

	print("Please select option:")
	print("1. Add")
	print("2. Sub")
	print("3. Mul")
	print("4. Div")
	local input = io.read("*n")

	local operations = {
		[1] = add,
		[2] = sub,
		[3] = mul,
		[4] = div,
	}

	local operation = operations[input]
	if operation then
		print("Your result is:", operation(first, second))
	else
		print("Choose from 1 to 4")
	end
end

main()
