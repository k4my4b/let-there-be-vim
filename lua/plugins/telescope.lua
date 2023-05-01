return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		{'nvim-lua/plenary.nvim'},
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable('make') == 1
			end
		}
	},
	init = function()
		pcall(require('telescope').load_extension('fzf'))
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end,
	opts = {
		defaults = {
			mappings = {
				i = {
					['<C-u>'] = false,
					['<C-d>'] = false
				},
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,                    
				override_generic_sorter = true,  
				override_file_sorter = true,     
				case_mode = "smart_case",        
			},
		},
	},
}
