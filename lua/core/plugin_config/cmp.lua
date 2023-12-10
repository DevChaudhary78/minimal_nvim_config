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
	mapping = {
		['<Tab>'] = cmp.mapping.confirm({select = true}),
		['<S-Tab>'] = cmp.mapping.select_next_item(),
	}
})
