return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- "hrsh7th/cmp-buffer",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    require("luasnip.loaders.from_vscode").lazy_load()
    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-s"] = cmp.mapping.complete(), -- show completion suggestions
        ["<esc>"] = cmp.mapping.abort(), -- close completion window
      }),
      sources = cmp.config.sources({
        -- { name = "luasnip" }, -- snippets
        { name = "nvim_lsp" },
        { name = "path" }, -- file system paths
        { name = "buffer" }, -- text within current buffer
      }),
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 150,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}
