return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		{'nvim-tree/nvim-web-devicons'}
	},
	opts = {
		options = {
			icons_enabled = false,
			theme = 'auto',
			omponent_separators = '|',
			section_separators = '',
			globalstatus = true, 
		}
	},
	init = function()
		vim.o.cmdheight = 0
	end
}
