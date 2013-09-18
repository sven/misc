" Colorscheme
set background=dark

" Modelines
set modeline

" Syntax Hilighting
syntax on
let python_highlight_all = 1 

" Ignore Case at Searching
" Highlight search
" Incremental search
set ignorecase
set hlsearch
set incsearch

" Display INSERT/REPLACE...
set showmode

" Show current cursor position
set ruler

" Line numbers
set number

" Show Filename
set ls=2

" Set Tabstops
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Show incomplete commands
set showcmd

" Enable Plugin Features
filetype plugin indent on

" store last edit position
if has("autocmd")
 au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
     \| exe "normal g'\"" | endif
endif

