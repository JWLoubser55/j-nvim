function refresh()
	vim.cmd [[write]]
	vim.cmd [[edit]]
	vim.cmd [[TSBufEnable highlight]]
end
