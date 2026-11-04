require("toggleterm").setup({
    --shell = vim.o.shell .. (vim.o.shell == "pwsh" and " -NoLogo -NoProfile" or ""),
	size = 20,
	direction = "float",
	open_mapping = [[<c-\>]],
})
