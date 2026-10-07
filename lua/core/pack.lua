vim.g["conjure#client#scheme#stdio#command"] = "csi -:c"
vim.g["conjure#client#scheme#stdio#prompt_pattern"] = "\n-#;%d-> "
vim.g["conjure#client#scheme#stdio#value_prefix_pattern"] = false
vim.g["conjure#mapping#doc_word"] = "K"

vim.pack.add({
	--icons for lualine, oil, and anything else that might need it
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	--tmux nav
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
	--which-key (motion hints)
	{ src = "https://github.com/folke/which-key.nvim" },
	--colourschemes
	{ src = "https://github.com/cocopon/iceberg.vim" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/projekt0n/github-nvim-theme" },
	--toggleterm
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	--telescope
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	--treesitter
	{ src = "https://github.com/romus204/tree-sitter-manager.nvim" },
	--rainbow delimiters
	{ src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },
	--undotree
	{ src = "https://github.com/mbbill/undotree" },
	--Git integration
	{ src = "https://github.com/tpope/vim-fugitive" },

	--lsp
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },

	--conjure
	{ src = "https://github.com/Olical/conjure" },
	{ src = "https://github.com/PaterJason/cmp-conjure" },

	{ src = "https://github.com/mhartington/formatter.nvim" },
	--lualine
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	--oil (netrw replacement)
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/malewicz1337/oil-git.nvim" },
	--helpview
	{ src = "https://github.com/OXY2DEV/helpview.nvim" },
	--bar and lines for line numbers
	--{src = "https://github.com/OXY2DEV/bars.nvim"},
})

require("rainbow-delimiters.setup").setup()
require("toggleterm").setup()
require("oil").setup()
