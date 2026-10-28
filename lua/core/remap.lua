local M = {}

M.general = {
	n = {
		["<C-BS>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
	},
}

--vim.g.mapleader = " "
--vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", function()
	vim.o.list = not vim.o.list
end)

vim.keymap.set("n", "<leader>mp", function()
	local tmp = vim.fn.tempname() .. ".md"
	vim.fn.writefile(vim.api.nvim_buf_get_lines(0, 0, -1, false), tmp)
	vim.cmd("botright split")
	vim.cmd("terminal mdflow < " .. vim.fn.shellescape(tmp))
end, { desc = "Render buffer with mdflow" })

--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*",
--  callback = function()
--    vim.lsp.buf.format({ async = true })
--  end,
--})
