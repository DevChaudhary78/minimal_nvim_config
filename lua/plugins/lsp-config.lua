return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				PATH = "prepend",
			})
			vim.keymap.set("n", "<leader>cm", ":Mason<Cr>", { noremap = true })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "omnisharp", "html", "cssls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = {
								"vim",
							},
						},
					},
				},
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.omnisharp.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilites = capabilities,
			})

			lspconfig.cssls.setup({
				capabilites = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
