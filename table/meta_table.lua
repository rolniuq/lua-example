--[[

--setmetatable is a function used to associate a metatable with a table.
--a metatable is a special table that can override or extend the behavior of another table by defining custom operations
--such as arithmetic operations, table indexing, or even function calls

*** Common metamethods ***

__index:	Defines behavior for reading nonexistent keys.
__newindex:	Defines behavior for writing to nonexistent keys.
__add:	Defines behavior for the + operator.
__sub:	Defines behavior for the - operator.
__call:	Makes the table callable like a function.
__tostring:	Defines the behavior when converting the table to a string using tostring.
__metatable:	Protects the metatable from being accessed or modified.

--]]
