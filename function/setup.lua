local setup = function(opts)
	if opts.default == nil then
		opts.default = 25
	end

	print(opts.default, opts.another)
end

setup({ another = 30 })
setup({ default = 10, another = 20 })
