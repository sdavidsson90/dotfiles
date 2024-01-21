return {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    event = "VeryLazy",
    keys = {
        { "<leader>co", "<cmd>VenvSelect<cr>" },
    },
    config = function()
      require("venv-selector").setup({
      anaconda_base_path = "/usr/local/Caskroom/miniconda/base/",
      anaconda_envs_path = "/usr/local/Caskroom/miniconda/base/envs",
    })
    end
}
