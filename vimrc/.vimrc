syntax on
set number
set relativenumber
set expandtab
set autoindent
set cursorline
set tabstop=2
set shiftwidth=2
set laststatus=2

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'

call plug#end()

"let g:airline_theme='papercolor'
let g:airline_theme='deus'
"let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
