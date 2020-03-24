" init.vim: Init script for neovim (nvim)

" Install plugins if necessary
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Setting up plugins..."
	!mkdir -p ~/.config/nvim/autoload/
	!curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'do' : './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Tab for opening file menu
map <TAB><SPACE> :Files<CR>
map <TAB>/ :Files /<CR>
map <TAB>` :Files ~<CR>
" \ For clearing search highlighting
map <silent> \ :<C-U>noh<CR>

" For lightline status bar
set laststatus=2

" Configure themes
let g:lightline = {
	\ 'colorscheme':'one',
	\ }

colorscheme desert

" Basic functionality
set number
set relativenumber

" Configure preferred tab behaviour
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set autoindent

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
