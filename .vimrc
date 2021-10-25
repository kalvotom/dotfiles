" vim config

syntax enable             " turn on syntax highlighting
filetype plugin indent on " turn on file type detection

set showcmd               " display incomplete commands

set number								" show line numbers
set ruler                 " show cursor position

set wrap                  " turn on line wrapping

set autoindent            " autoindent on return/enter

set ts=2                  " global tab width
set expandtab             " use spaces instead of tabs
set relativenumber

set laststatus=2

" https://github.com/vim-airline/vim-airline
" https://github.com/tpope/vim-fugitive

let g:airline_powerline_fonts = 1
