" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
"Plugin 'cocopon/iceberg.vim'
call vundle#end()
filetype plugin indent on

" theme
set background=dark
colorscheme peachpuff

" autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1
set noswapfile

" no start message
set shortmess+=I

" indent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent
syntax on
autocmd FileType tex setlocal indentkeys=''       " tex
autocmd BufRead,BufNewFile *.md,*.md+,*.html,*.html+,*.tmpl setlocal tabstop=2 shiftwidth=2
let g:pyindent_open_paren='&sw'
let g:pyindent_continue='&sw'

" don't continue comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" select color
hi Visual term=NONE cterm=NONE ctermbg=238

" wrap
set wrap linebreak nolist wrapmargin=0 display=lastline

" 80 column marker
autocmd BufRead,BufNewFile *.py,*.js,*.java,*.ml setlocal textwidth=79 colorcolumn=+1 sw=4
hi ColorColumn ctermbg=248

" esc timeout
set timeoutlen=1000 ttimeoutlen=0

" split mode for new panes
set splitbelow splitright

" tab completion
set wildmenu wildmode=longest,list,full

" move cursor by display line
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" search
set incsearch nohlsearch ignorecase smartcase
