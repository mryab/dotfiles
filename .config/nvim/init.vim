set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set number
set autoindent
set cmdheight=2
set showmatch
<<<<<<< HEAD
set ai
set si
set t_Co=256
set background=dark
=======
set smartcase
set scrolloff=3
set clipboard=unnamed
set mouse=a
set ai
set si
set backspace=indent,eol,start
set backspace=2
set wildmenu
set wildmode=list:longest
set termguicolors
>>>>>>> 980689f... update configs
filetype plugin on
filetype indent on
syntax enable
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
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'rhysd/vim-clang-format'
<<<<<<< HEAD
Plug 'freeo/vim-kalisi'
Plug 'vim-airline/vim-airline-themes'
=======
Plug 'dracula/vim'
Plug 'mhartington/oceanic-next'
>>>>>>> 980689f... update configs
Plug 'bronson/vim-trailing-whitespace'
call plug#end()
<<<<<<< HEAD
colorscheme kalisi
let g:airline_theme='kalisi'
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set laststatus=2
let g:airline_powerline_fonts = 1

=======
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
autocmd FileType c ClangFormatAutoEnable
let g:clang_format#style_options = {
            \ "BreakBeforeBraces":"Custom",
            \ "BraceWrapping":{
            \       "AfterStruct" : "true",
            \},
            \ "IndentWidth":4,
            \ "ContinuationIndentWidth":4,
            \ "AlignAfterOpenBracket":"DontAlign",
            \}
set completeopt-=preview
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%3l:%2v'
let g:airline#extensions#ycm#enabled = 1
>>>>>>> 980689f... update configs
let mapleader = "\<Space>"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
let g:ycm_key_invoke_completion = '<Tab-Space>'
