if vim.o.shell == "pwsh" then
    require("toggleterm").setup{
        shell = "pwsh -NoLogo -NoProfile",
        size = 20 or function(term)
            if term.direction == "horizontal" then
                return 15
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.4
            end
        end,
        open_mapping = [[<c-\>]],
    }
else
    require("toggleterm").setup{
        size = 20 or function(term)
            if term.direction == "horizontal" then
                return 15
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.4
            end
        end,
        open_mapping = [[<c-\>]],
    }
end
