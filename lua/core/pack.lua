vim.pack.add({
    --tmux nav
    {src = "https://github.com/christoomey/vim-tmux-navigator"},
    --which-key (motion hints)
    {src = "https://github.com/folke/which-key.nvim"},
    --colourschemes
    {src = "https://github.com/cocopon/iceberg.vim"},
    {src = "https://github.com/rebelot/kanagawa.nvim"},
    {src = "https://github.com/projekt0n/github-nvim-theme"},
    --rainbow delimiters
    {src = "https://github.com/HiPhish/rainbow-delimiters.nvim"},
    --toggleterm
    {src = "https://github.com/akinsho/toggleterm.nvim"},
    --treesitter
    {src = "https://github.com/nvim-lua/plenary.nvim"},
    {src = "https://github.com/nvim-treesitter/nvim-treesitter"},
    
    --harpoon (file buffer shorcuts)
    {src = "https://github.com/ThePrimeagen/harpoon"},
    --undotree
    {src = "https://github.com/mbbill/undotree"},
    --Git integration
    {src = "https://github.com/tpope/vim-fugitive"},
    
    --lsp
    {src = "https://github.com/neovim/nvim-lspconfig"},
    {src = "https://github.com/williamboman/mason.nvim"},
    {src = "https://github.com/williamboman/mason-lspconfig.nvim"},
    {src = "https://github.com/hrsh7th/nvim-cmp"},
    {src = "https://github.com/hrsh7th/cmp-nvim-lsp"},
    {src = "https://github.com/L3MON4D3/LuaSnip"},
    {src = "https://github.com/VonHeikemen/lsp-zero.nvim"},

    {src = "https://github.com/mhartington/formatter.nvim"},
    --icons for lualine, oil, and anything else that might need it
    {src = "https://github.com/nvim-tree/nvim-web-devicons"},
    --lualine
    {src = "https://github.com/nvim-lualine/lualine.nvim"},
    --oil (netrw replacement)
    {src = "https://github.com/stevearc/oil.nvim"},
    --helpview
    {src = "https://github.com/OXY2DEV/helpview.nvim"},
    --bar and lines for line numbers
    --{src = "https://github.com/OXY2DEV/bars-N-lines.nvim"},
})

require("toggleterm").setup()
require("oil").setup()
