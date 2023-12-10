local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip$anonymous"](args.body)
		end,
	},
	sources = {
		{name = "buffer"},
		{name = "nvim_lsp"},
		{name = "path"},
	},
})

vim.api.nvim_set_keymap('i', '<Tab>', '<C-n>', { noremap = true, silent = true })

