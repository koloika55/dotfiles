scriptencoding utf-8
set fileencoding=utf-8
set encoding=utf-8
set nocompatible
set modelines=0
set clipboard+=unnamedplus
set noshowmode 
filetype plugin on
syntax on
set relativenumber
vnoremap <C-c> "+y
map <C-p> "+P
set nohlsearch
set modelines=0

call plug#begin('~/.config/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()

let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:gruvbox_transparent_bg = 1
colorscheme gruvbox
set background=dark
hi Normal ctermbg=NONE guibg=NONE
