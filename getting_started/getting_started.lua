print("hello world")

-- defines a function
function Fact(n)
	if n == 0 then
		return 1
	else
		return n * Fact(n - 1)
	end
end

print("enter a number:")
a = io.read("*number")
print(Fact(a))
