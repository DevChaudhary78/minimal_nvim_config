local cmp = require("cmp")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

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

cmp.event:on(
'confirm_done',
cmp_autopairs.on_confirm_done()
)

