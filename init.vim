call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow'
Plug 'plasticboy/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'edkolev/promptline.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'cespare/vim-toml'

call plug#end()

" Color scheme
silent! colorscheme nord
let g:airline_theme='nord'
" let g:airline_powerline_fonts = 1

" Others
set number relativenumber
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
au FileType python let b:delimitMate_nesting_quotes = ['"']
let g:rainbow_active = 1
let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'a' : [ promptline#slices#user() ],
        \'b' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#git_status() ],
        \'z' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}
command SW :execute ':silent w !sudo tee % > /dev/null' | :edit!
