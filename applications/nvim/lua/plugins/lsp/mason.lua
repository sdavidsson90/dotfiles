return{
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  event = "VeryLazy",
  config = function()
    --
    require("mason").setup()
    --
    require("mason-lspconfig").setup({
      event = { "BufReadPre", "BufNewFile" },
      automatic_installation = true,
      ensure_installed = {
        "r_language_server",
        "pyright",
        "bashls",
        "lua_ls",
      },
    })
    --
    require("mason-tool-installer").setup({
      ensure_installed = {
        "isort",
        "black",
        "pylint",
      },
    })
    --
  end,
}
