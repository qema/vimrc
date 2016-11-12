" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
call vundle#end()
filetype plugin indent on

" autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1
set noswapfile

set shortmess+=I
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on
filetype indent on
set autoindent smartindent
autocmd FileType tex set indentkeys=''

set wrap linebreak nolist wrapmargin=0

autocmd BufRead,BufNewFile *.py,*.js,*.java,*.ml set textwidth=80 colorcolumn=+1
hi ColorColumn ctermbg=252

set splitbelow
set splitright


