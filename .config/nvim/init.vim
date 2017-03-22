set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set number
set cursorline
set autoindent
set cmdheight=2
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
set wildmode=list:longest
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
sign define Dummy
autocmd VimEnter,SessionLoadPost,BufRead * execute 'sign place 97349278 line=9999 name=Dummy buffer='.bufnr('%')
call plug#begin('~/.config/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'rhysd/vim-clang-format'
Plug 'dracula/vim'
Plug 'bronson/vim-trailing-whitespace'
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
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
nnoremap <Tab> <c-w>w
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%3l:%2v'
let g:airline#extensions#ycm#enabled = 1
let mapleader = "\<Space>"
