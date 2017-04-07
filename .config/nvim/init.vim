set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set number
set cursorline
set autoindent
set cmdheight=1
set showmatch
set smartcase
set scrolloff=3
set clipboard=unnamed
set mouse=a
set ai
set si
set backspace=indent,eol,start
set backspace=2
set wildmenu
set termguicolors
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
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'rhysd/vim-clang-format'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mhartington/oceanic-next'
call plug#end()
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
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%3l:%2v'
let g:airline#extensions#ycm#enabled = 1
let mapleader = "\<Space>"
