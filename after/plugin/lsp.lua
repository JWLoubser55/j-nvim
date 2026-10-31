local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "conjure" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp_signature_help" },
		{
			name = "path",
			option = {
				pathMappings = {
					["@"] = "${folder}/src",
					-- ['/'] = '${folder}/src/public/',
					-- ['~@'] = '${folder}/src',
					-- ['/images'] = '${folder}/src/images',
					-- ['/components'] = '${folder}/src/components',
				},
			},
		},
		{ name = "buffer" },
	},
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	--formatting = lsp_zero.cmp_format(),
	formatting = {
		format = function(entry, vim_item)
			if vim.tbl_contains({ "path" }, entry.source.name) then
				local icon, hl_group = require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
				if icon then
					vim_item.kind = icon
					vim_item.kind_hl_group = hl_group
					return vim_item
				end
			end
			return require("lspkind").cmp_format({ with_text = false })(entry, vim_item)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		-- scroll up and down the documentation window
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
	matching = { disallow_symbol_nonprefix_matching = false },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })
vim.lsp.config("asm_lsp", { filetypes = { "nasm", "asm", "vmasm" } })
vim.lsp.config("ada_ls", { cmd = { "alr", "exec", "--", "ada_language_server" } })
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

vim.api.nvim_set_hl(0, "@lsp.type.macro.c", {})
vim.api.nvim_set_hl(0, "@lsp.type.macro.cpp", {})
