-- Map leader key e.i. <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable/Disable text highlighting on search
vim.o.hlsearch = true

-- Enable/Disable line numbers
vim.wo.number = true

-- Enable/Disable line wrap
vim.wo.wrap = false

-- Enable/Disable Mouse
vim.o.mouse = 'a'

-- Enable/Disable unified system clipboard
vim.o.clipboard = 'unnamedplus'

-- Enable/Disable break indent
vim.o.breakindent = true

-- Enable/Disable keeping an undo history of each file
vim.o.undofile = true

-- Enable/Disable Case-insensitive searching
-- NOTE: \C or capital in search will override this setting
vim.o.ignorecase = true
vim.o.smartcase = true

-- Adjust update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Adjust auto copletion options
vim.o.completeopt = 'menuone,noselect'

-- Force colour mode
vim.o.termguicolors = true

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
