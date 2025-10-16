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

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"asm_lsp", "clangd"},
  handlers = {
    -- this first function is the "default handler"
    -- it applies to every language server without a "custom handler"
    function(server_name)
      vim.lsp.config(server_name).setup({})
    end,
    
    -- this is the "custom handler" for `lua_ls`
    lua_ls = function()
      vim.lsp.config(lua_ls).setup({
        on_init = function(client)
          lsp_zero.nvim_lua_settings(client, {})
        end,
      })
    end,
  }
})

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

vim.lsp.enable('clangd')
