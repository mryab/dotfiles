set termguicolors
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set number
set autoindent
set cmdheight=2
set showmatch
set ai
set si
set t_Co=256
set background=dark
filetype plugin on
filetype indent on
syntax on
if !isdirectory($HOME."/.config/nvim")
    call mkdir($HOME."/.config/nvim", "", 0770)
endif
if !isdirectory($HOME."/.config/nvim/undodir")
    call mkdir($HOME."/.config/nvim/undodir", "", 0700)
endif
set undodir=~/.config/nvim/undodir
set undofile
call plug#begin('~/.config/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'rhysd/vim-clang-format'
Plug 'freeo/vim-kalisi'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'rhysd/vim-clang-format'
call plug#end()
colorscheme kalisi
let g:airline_theme='kalisi'
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set laststatus=2
let g:airline_powerline_fonts = 1

let mapleader = "\<Space>"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
let g:ycm_key_invoke_completion = '<Tab-Space>'
