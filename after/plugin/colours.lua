vim.api.nvim_create_user_command("Colour", function(opts)
    ColourMyPencils(opts.args)
end, { nargs = 1 })

function ColourMyPencils(colour)
	colour = colour or "kanagawa"
	vim.cmd.colorscheme(colour)
end

ColourMyPencils()
