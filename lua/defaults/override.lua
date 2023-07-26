-- Map leader key e.i. <space>
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable/Disable text highlighting on search
-- See `:help hlsearch`
vim.o.hlsearch = true

-- Enable/Disable line numbers
-- See `:help nonumber' or `:help 'number'`
vim.wo.number = true

-- Enable/Disable line wrap
-- See `:help wrap`
vim.wo.wrap = false

-- Enable/Disable Mouse support
-- See `:help mouse`
vim.o.mouse = 'a'

-- Enable/Disable unified system clipboard
-- See `:help clipboard`
vim.o.clipboard = 'unnamedplus'

-- Enable/Disable breakindent
-- See `:help breakindent`
vim.o.breakindent = true

-- Enable/Disable keeping an undo history of each file
-- See `:help udf` or `:help 'undofile'`
vim.o.undofile = true

-- Enable/Disable Case-insensitive searching
-- NOTE: \C or \c in the search pattern will override this setting
-- See `help: 'ic'` or `:help 'ignorecase'`
vim.o.ignorecase = true

-- Enable/Disable Override the 'ignorecase' option if the 
-- search pattern includes an upper case letter.
-- See `:help 'scs'` or `:help 'smartcase'`
vim.o.smartcase = true

-- Time in milliseconds after which swap file is written
-- to disk once typing is stopped 
-- Default 4000
-- See `:help ut` or `:help 'updatetime'`
vim.o.updatetime = 250

-- "Time in milliseconds to wait for a mapped sequence to complete."
-- Default 1000
-- See `:help 'tm'` or `:help 'timeoutlen'`
vim.o.timeoutlen = 300

-- Configure behaviour of Insert mode completion
-- See `:help 'cot'` or `:help 'completeopt'`
vim.o.completeopt = 'menuone,noselect'

-- Enable/Disable 24-bit RGB color in TUI.
-- NOTE: requires an ISO-8613-3 compatible terminal.
-- See `:help 'tgc'` or `:help 'termguicolors`
vim.o.termguicolors = true
