" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

Plug 'romainl/flattened'
Plug 'bling/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'

call plug#end()  

" Solarized
syntax on
set bg=dark
" colorscheme flattened_dark

" Airline
" let g:airline_powerline_fonts = 1

" Others
let g:rainbow_active = 1
set laststatus=2
set fileformats=unix,dos
set nowrap
set nobackup
set nu
set ts=4
set sw=4
set expandtab
set autoindent
set pastetoggle=<f3>
au FileType python let b:delimitMate_nesting_quotes = ['"']
