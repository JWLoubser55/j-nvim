require("core.remap")
require("core.packer")

vim.opt.termguicolors = true
vim.opt.textwidth = 80
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.cmd [[set nu rnu]]

vim.g.load_doxygen_syntax = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  if vim.fn.executable("pwsh") == 1 then
    vim.o.shell = "pwsh"
    vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.o.shellquote = '"'
    vim.o.shellxquote = ""
  end
end
