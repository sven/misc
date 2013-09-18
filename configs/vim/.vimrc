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

" show C space errors
let c_space_errors=1

" http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files -> 1000
"  "100 :  will save up to 100 lines for each register -> 1000
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='1000,\"1000,:20,%,n~/.viminfo

" store and restore last edit position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

