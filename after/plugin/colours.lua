function ColourMyPencils(colour)
	colour = colour or "kanagawa"
	vim.cmd.colorscheme(colour)
end

ColourMyPencils()
