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
		vim.keymap.set('n', '<leader>e', function()
			require("nvim-tree.api").tree.toggle({})
		end, { desc = 'Toggle file explorer' })
		require('nvim-tree').setup({
			renderer = {
				group_empty = true
			},
			view = {
				-- Dynamically adjust the width to value between 30 to 40 columns
				width = function()
					local width = math.floor(vim.opt.columns:get() * 0.25)
					return math.max(30, math.min(width,40))
				end
			}
		})
	end
}
