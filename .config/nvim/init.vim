set nocompatible
set clipboard+=unnamedplus
filetype plugin on
syntax on
set relativenumber
vnoremap <C-c> "+y
map <C-p> "+P

call plug#begin('~/.config/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()

let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

colorscheme gruvbox
set background=dark
