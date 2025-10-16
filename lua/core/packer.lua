local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
    	return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use "christoomey/vim-tmux-navigator"
	use "folke/which-key.nvim"
	use 'HiPhish/rainbow-delimiters.nvim'
	use 'OXY2DEV/helpview.nvim'
	use 'wbthomason/packer.nvim'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	require("toggleterm").setup()
	end}	
	use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.2',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }	
	}
	use({
		'projekt0n/github-nvim-theme',
	    	config = function()
		require('github-theme').setup({
		-- ...
		}) 
    	end})
	use("rebelot/kanagawa.nvim")
    	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    	use( 'ThePrimeagen/harpoon')
    	use( 'mbbill/undotree')
    	use( 'tpope/vim-fugitive')
    	use {
	    	'VonHeikemen/lsp-zero.nvim',
	    	branch = 'v4.x',
		requires = {
		    	-- LSP Support
		    	{'neovim/nvim-lspconfig'},             -- Required
		    	{'williamboman/mason.nvim'},           -- Optional
		    	{'williamboman/mason-lspconfig.nvim'}, -- Optional

		    	-- Autocompletion
		    	{'hrsh7th/nvim-cmp'},     -- Required
		    	{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},
	    	}
	}
	use( 'mhartington/formatter.nvim')
	use('nvim-tree/nvim-web-devicons')
	use { 'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	--use("OXY2DEV/bars-N-lines.nvim")
  
	use({
	  	"stevearc/oil.nvim",
	  	config = function()
			require("oil").setup()
	  	end,
	})

	if packer_bootstrap then
		require('packer').sync()
	end

end)
