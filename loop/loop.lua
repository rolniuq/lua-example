local array = { 1, 2, 3, 4, 5 }

for i = 1, #array, 1 do
	print(i)
end

print("===========")

--[[
pair:
  loop all key-value in table
  do not care about variable type
  not ensure order position of value in table
]]
--

for index, value in pairs(array) do
	print(index, value)
end

print("===========")

--[[
--ipairs:
--loop all integer start by 1
--stop once missing key
--use when an table like a array
--]]
--

for index, value in ipairs(array) do
	print(index, value)
end

print("===========")

local array2 = { 10, 30, 20, nil, 50 }

for index, value in ipairs(array2) do
	print(index, value)
end

print("===========")

local resouces = { a = 1, b = 2 }

for i = 1, #resouces, 1 do
	print(resouces[1])
end

print("resources ipairs")

for index, value in ipairs(resouces) do
	print(index, value)
end

print("resources pairs")

for index, value in pairs(resouces) do
	print(index, value)
end
