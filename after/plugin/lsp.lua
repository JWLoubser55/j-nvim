local lspconfig = vim.lsp.config
local lsp_zero = require('lsp-zero')

local function is_executable(cmd)
  return vim.fn.executable(cmd) == 1
end

local lsp_attach = function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end

lsp_zero.extend_lspconfig({
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  lsp_attach = lsp_attach,
  float_border = 'rounded',
  sign_text = true,
})

vim.lsp.config('asm_lsp', { filetypes = {"nasm", "asm", "vmasm"}})
require('mason').setup({})
require('mason-lspconfig').setup(
    {ensure_installed = {"ada_language_server", "asm_lsp", "clangd"},
    automatic_enable = { exclude = { "ada_language_server" }}
})
--vim.lsp.config('ada_ls')
vim.lsp.enable('ada_ls')

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
})
