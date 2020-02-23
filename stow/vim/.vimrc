call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do' : './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

map <TAB> :Files<CR>

" For lightline status bar
set laststatus=2

" Set to 'one' theme
let g:lightline = {
	\ 'colorscheme':'one',
	\ }

set number
set relativenumber
syntax on

set wildmenu
set nocompatible

set tabstop=4
set autoindent

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
