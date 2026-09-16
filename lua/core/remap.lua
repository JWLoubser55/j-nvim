local M ={}

M.general = {
	n = {
		["<C-BS>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
		["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
		["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
		["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
	}
}

vim.g.mapleader = " "
--vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>w', function ()
    vim.o.list = not vim.o.list
end)

--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*",
--  callback = function()
--    vim.lsp.buf.format({ async = true })
--  end,
--})
