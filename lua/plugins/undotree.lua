return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>udt', vim.cmd.UndotreeToggle)
  end
}
