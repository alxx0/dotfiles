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
