scriptencoding utf-8
set fileencoding=utf-8
set encoding=utf-8
set nocompatible
set modelines=0
set clipboard+=unnamedplus
set noshowmode 
filetype plugin on
set relativenumber
vnoremap <C-c> "+y
map <C-p> "+P
set nohlsearch
set modelines=0
set path+=**			" Searches current directory recursively.
set wildmenu			" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
syntax enable
set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:gruvbox_transparent_bg = 1
colorscheme gruvbox
set background=dark
hi Normal ctermbg=NONE guibg=NONE
