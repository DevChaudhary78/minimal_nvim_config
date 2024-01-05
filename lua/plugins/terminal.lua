return {
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
      require('toggleterm').setup{
        terminal_mappings = true,
        start_in_insert = false,
        vim.keymap.set("n", "<C-t>", "<esc>:ToggleTerm<Cr>", {noremap = true}),
        shell = "powershell"
      }
    end,
  }
}
