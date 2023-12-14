set nocompatible
set clipboard+=unnamedplus
filetype plugin on
syntax on
set relativenumber
vnoremap <C-c> "+y
map <C-p> "+P
 

call plug#begin('~/.config/nvim/plugged')

Plug 'vimwiki/vimwiki'

call plug#end()

let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
