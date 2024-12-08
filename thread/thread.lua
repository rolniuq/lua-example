local function task1()
	for i = 1, 5, 1 do
		print("task 1 step ", i)
		coroutine.yield()
	end
end

local function task2()
	for i = 1, 5, 1 do
		print("task 2 step ", i)
		coroutine.yield()
	end
end

local co1 = coroutine.create(task1)
local co2 = coroutine.create(task2)

for i = 1, 5, 1 do
	coroutine.resume(co1)
	coroutine.resume(co2)
end
