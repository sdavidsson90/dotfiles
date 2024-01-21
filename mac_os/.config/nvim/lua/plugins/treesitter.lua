return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'RRethy/nvim-treesitter-endwise',
    'nvim-treesitter/nvim-treesitter-refactor',
    'JoosepAlviste/nvim-ts-context-commentstring',
    },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {'r', 'python', 'lua', 'bash', 'markdown', 'html', 'yaml', 'toml', 'json'},
      auto_install = true,
      highlight = {enable = true},
      indent = {enable = true},
      endwise = {enable = true},
      textobjects = {
          select = {
              enable = true,
              lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
              keymaps = {
                  -- You can use the capture groups defined in textobjects.scm
                  ['aa'] = '@parameter.outer',
                  ['ia'] = '@parameter.inner',
                  ['af'] = '@function.outer',
                  ['if'] = '@function.inner',
                  ['ac'] = '@class.outer',
                  ['ic'] = '@class.inner',
              },
          },

      }
    }
  end
  }
