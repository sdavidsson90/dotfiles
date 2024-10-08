return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    require("luasnip.loaders.from_vscode").lazy_load()
    cmp.setup({
      completion = { completeopt = "menu,menuone,preview,noselect" },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      -- Keybinds
      mapping = cmp.mapping.preset.insert({
        [""] = cmp.mapping.select_prev_item(), -- previous suggestion
        [""] = cmp.mapping.select_next_item(), -- next suggestion
        [""] = cmp.mapping.scroll_docs(-4),
        [""] = cmp.mapping.scroll_docs(4),
        [""] = cmp.mapping.confirm({ select = false }),
        [""] = cmp.mapping.complete(), -- show completion suggestions
        [""] = cmp.mapping.abort(), -- close completion window
      }),
      -- Autocompletion sources (order matters)
      sources = cmp.config.sources({
        { name = "luasnip" }, -- snippets
        { name = "nvim_lsp" },
        { name = "path" }, -- file system paths
        { name = "buffer" }, -- text within current buffer
      }),
      -- Lspkind
      formatting = {
        format = lspkind.cmp_format({ maxwidth = 150, ellipsis_char = "...", }),
      },
      --
    })
  end,
}
