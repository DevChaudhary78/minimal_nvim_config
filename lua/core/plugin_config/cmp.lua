local cmp = require("cmp")

cmp.setup({
	sources = {
		{name = "buffer"},
		{name = "nvim_lsp"},
		{name = "path"},
	}
})

