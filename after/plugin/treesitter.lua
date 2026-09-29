require("tree-sitter-manager").setup({
  -- Default Options
  parser_dir = vim.fn.stdpath("data") .. "/site/parser",
  query_dir = vim.fn.stdpath("data") .. "/site/queries",
  assume_installed = {}, -- blacklist languages
  ensure_installed = {"python", "comment", "markdown", "html", "xml", "c", "cpp", 
  	"lua", "vim", "vimdoc", "query", "java", "pascal", "doxygen", "git_config"}, -- parsers to install at startup
  auto_install = true, -- auto-install when a new filetype is encountered
  noauto_install = {}, -- blacklist from auto_install
  highlight = true, -- enable treesitter highlighting (use list to whitelist)
  nohighlight = {}, -- blacklist from highlight
  languages = {}, -- override or add new parser sources
  nerdfont = true, -- use Nerd Font icons in the manager UI
  border = "rounded", -- border style for the TUI window
  min_width = 78, -- minimum size of the TUI
  min_height = 40,
})

--local ts= require('nvim-treesitter')

--vim.cmd [[TSUpdate]]

--[[ts.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {"python", "comment", "markdown", "html", "xml", "c", "cpp", 
  	"lua", "vim", "vimdoc", "query", "java", "pascal", "doxygen", "git_config"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,


    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

--vim.treesitter.language.register("doxygen", "c")
--vim.treesitter.language.register("doxygen", "cpp")
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})]]
