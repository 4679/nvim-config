call plug#begin()

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'Raimondi/delimitMate'
Plug 'farmergreg/vim-lastplace'
Plug 'dag/vim-fish'
Plug 'tribela/vim-transparent'

call plug#end()

" Color scheme
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
silent! colorscheme onehalfdark
let g:airline_theme='onehalfdark'
"let g:airline_powerline_fonts = 1

" Others
if &shell =~# 'fish$'
    set shell=sh
endif
filetype plugin indent on
set nu rnu
set ts=4
set sw=4
set nowrap
set mouse=a
set hlsearch
set expandtab
set autoindent
set ignorecase
set pastetoggle=<f3>
let g:rainbow_active = 1
command SW :execute ':silent w !doas tee % > /dev/null' | :edit!
