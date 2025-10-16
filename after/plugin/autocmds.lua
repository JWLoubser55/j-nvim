--[[vim.api.nvim_create_autocmd({"BufEnter"}, {
	pattern = "*",
	callback = function()
		local dir = vim.fn.expand("%:p:h")
		if vim.fn.isdirectory(dir) == 1 then
			vim.cmd("tcd " .. dir)
		end
	end,
})]]--
