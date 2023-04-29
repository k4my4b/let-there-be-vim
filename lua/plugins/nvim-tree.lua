return {
	'nvim-tree/nvim-tree.lua',
	version = "*",
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true
		require('nvim-tree').setup({
			renderer = {
				group_empty = true
			},
			view = {
				width = function()
					local width = math.floor(vim.opt.columns:get() * 0.25)
					return math.max(30, math.min(width,40))
				end
			}
		})
	end
}

