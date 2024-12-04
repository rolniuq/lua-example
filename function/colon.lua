local myTable = {}

-- This requires explicitly pass the self parameter to the function.
function myTable.dot(self, ...)
	print("dot:", self, ...)
end

-- This automatically passes the table (or object) as the self parameter, making the code cleaner when calling methods.
function myTable:colon(...)
	print("colon", ...)
end

local instance = myTable

instance.dot(instance, "hello", "world")
instance:colon("hello", "world", 2)
