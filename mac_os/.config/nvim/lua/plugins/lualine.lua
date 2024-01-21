return {
	"nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
    },
    config = function()
      require("lualine").setup({
        options = {
				icons_enabled = true,
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				globalstatus = true,
        },
			  sections = {
			  	lualine_a = {'mode'},
			  	lualine_b = {'fancy_diagnostics'},
			  	lualine_c = {{'filename', path = 3}, {'swenv', icon = ''}},
			  	lualine_x = {'fancy_branch', 'fancy_diff'},
			  	lualine_y = {'fancy_lsp_servers', 'filetype'}
			  	-- lualine_z = {},
        }
      })
    end
}
