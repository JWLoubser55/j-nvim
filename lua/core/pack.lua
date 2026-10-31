--Globals for conjure need to be set before loading
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
	----Iceberg Dark
	{ src = "https://github.com/cocopon/iceberg.vim" },
	----Kanagawa Wave (Current Default)
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	----Github Dark, my first colourscheme plugin
	{ src = "https://github.com/projekt0n/github-nvim-theme" },
	----Neogotham looks pretty cool
	{ src = "https://gitlab.com/shmerl/neogotham" },
	--toggleterm
	{ src = "https://github.com/akinsho/toggleterm.nvim" },

	--telescope
	----plenary is a dependency of telescope
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	----telescope is my thing picker plugin
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
	----Icon
	{ src = "https://github.com/onsails/lspkind.nvim" },
	----Preconfigurations
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	----Mason for installing lsps, formatters etc.
	{ src = "https://github.com/williamboman/mason.nvim" },
	------Integration with lspconfig
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
	----nvim-cmp for autocompletion
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	------get autocompletions from lsp
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
	------get autocompletions from text in current buffer
	{ src = "https://github.com/hrsh7th/cmp-buffer" },
	------get function signature autocompletions
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help" },
	------get completions for fs paths
	{ src = "https://github.com/hrsh7th/cmp-path" },
	------get completions for the commandline
	{ src = "https://github.com/hrsh7th/cmp-cmdline" },
	------autocomplete nvim-lua stuff
	{ src = "https://github.com/hrsh7th/cmp-nvim-lua" },

	--scheme stuff
	----S expressions made easier
	{ src = "https://github.com/tpope/vim-repeat" },
	{ src = "https://github.com/tpope/vim-surround" },
	----Mappings for Symbolic Expressions
	{ src = "https://github.com/guns/vim-sexp" },
	----Saner Remappings
	{ src = "https://github.com/tpope/vim-sexp-mappings-for-regular-people" },
	----conjure (Cool REPL stuff for Scheme, Python, etc.)
	{ src = "https://github.com/Olical/conjure" },
	------autocompletions for conjure
	{ src = "https://github.com/PaterJason/cmp-conjure" },

	--Formatting
	{ src = "https://github.com/mhartington/formatter.nvim" },

	--lualine
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },

	--oil (netrw replacement)
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/malewicz1337/oil-git.nvim" },

	--helpview
	{ src = "https://github.com/OXY2DEV/helpview.nvim" },

	--markdown live-preview
	{ src = "https://github.com/brianhuster/live-preview.nvim" },

	--bar and lines for line numbers
	--{src = "https://github.com/OXY2DEV/bars.nvim"},
})
