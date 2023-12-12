vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

function Theme(theme)
    Color = theme or "habamax"
    vim.cmd.colorscheme(Color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

Theme()
