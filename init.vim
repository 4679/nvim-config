" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

Plug 'tomasr/molokai'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'

call plug#end()  

" Molokai
syntax on
" colorscheme molokai
" autocmd VimEnter * AirlineTheme molokai

" Airline
" let g:airline_powerline_fonts = 1

" Others
let g:rainbow_active = 1
set laststatus=2
set fileformats=unix,dos
set nowrap
set nobackup
set nu
set ts=2
set sw=2
set expandtab
set autoindent
set pastetoggle=<f3>
au FileType python let b:delimitMate_nesting_quotes = ['"']
