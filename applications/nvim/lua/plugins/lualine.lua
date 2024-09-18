return {
	"nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
      "meuter/lualine-so-fancy.nvim",
    },
    opts = {
        options = {
				  globalstatus = true,
          component_separators = '',
          section_separators = { left = '', right = '' },
          disabled_filetypes = { 'NvimTree' },
          themes = 'vscode',
        },
			  sections = {
			  	lualine_a = {'mode'},
			  	lualine_b = {
            {'buffers',
              icons_enabled = false,
              show_modified_status = false,
              mode = 1,
              use_mode_colors = false,
              max_length = 0,
              symbols = {
                modified = '',
                alternate_file = '',
                directory =  '',
              },
            },
            {'filename', path = 3,
              symbols = {
                modified = '●',
                readonly = '(Read only)',
                unnamed = '[Unnamed]',
                newfile = '[New]',
              },
            },
          },
          lualine_c = {},
          lualine_x = {},
			  	lualine_y = {
            'fancy_lsp_servers',
            {'filetype',
              icons_enabled = false,
              colored = false,
            },
          },
			  	lualine_z = {
            'location',
          },
        }
    }
}
