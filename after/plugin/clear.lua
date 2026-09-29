vim.api.nvim_create_user_command("Clear", function()
    clear()
end, {nargs = 0, desc = 'Turns off the background'})

function clear()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

