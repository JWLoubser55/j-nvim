local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "conjure" },
	},
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	--formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		-- scroll up and down the documentation window
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })
vim.lsp.config("asm_lsp", { filetypes = { "nasm", "asm", "vmasm" } })
require("mason").setup({})
require("mason-lspconfig").setup({
	--ensure_installed = { "ada_language_server", "asm_lsp", "clangd" },
	automatic_enable = { exclude = { "ada_language_server" } },
})
--vim.lsp.config('ada_ls')
if vim.fn.executable("ada_language_server") == 1 then
	vim.lsp.enable("ada_ls")
end
if vim.fn.executable("vscode-json-language-server") == 1 then
	vim.lsp.enable("jsonls")
end

vim.keymap.set("n", "<leader>f", function()
	vim.print("Formatted buffer")
	vim.lsp.buf.format()
end, { silent = true, noremap = true })
