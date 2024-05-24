local g = vim.g
local o = vim.o
local opt = vim.opt

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

o.termguicolors = true
o.background = 'dark'

-- Do not save when switching buffers
o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.cursorline = true

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
o.lazyredraw = true

opt.mouse = "a"

o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.compatible = false
o.showmode = false
o.hlsearch = false
o.wildmenu = true
o.incsearch = true
o.hidden = true
o.syntax = enable


vim.g.vimwiki_list = {{
	path = '~/dox/vimwiki',
	syntax = 'markdown',
	ext = 'md'
}}
