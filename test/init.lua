print("this is space space x")

vim.keymap.set("n", "<space><space>x", function()
    vim.cmd("source %")
end)
