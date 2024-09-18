return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'RRethy/nvim-treesitter-endwise',
    'nvim-treesitter/nvim-treesitter-refactor',
    -- 'JoosepAlviste/nvim-ts-context-commentstring',
    },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { "c", "lua", "vim", "query", "markdown", "markdown_inline", "python", "r", "html", "json", "bash", "css", "csv", "dockerfile", "fish", "go", "javascript", "json", "julia", "make", "matlab", "php", "rust", "ruby", "ssh_config", "terraform", "toml", "typescript", "yaml", "xml"},
      ignore_install = {},
      modules = {},
      sync_install = false,
      auto_install = true,
      highlight = {enable = true},
      indent = {enable = true},
      endwise = {enable = true},
      textobjects = {
          select = {
              enable = true,
              lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
              keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
                ['al'] = '@loop.outer',
                ['il'] = '@loop.inner',
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['uc'] = '@comment.outer',
              },
          },

      }
    }
  end
  }
