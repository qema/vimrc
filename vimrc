" vim-plug
call plug#begin()
Plug '907th/vim-auto-save'
Plug 'valloric/youcompleteme'
Plug 'sheerun/vim-polyglot'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'preservim/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'lervag/vimtex'
call plug#end()

" esc timeout
set timeoutlen=1000 ttimeoutlen=0

" leader key
nnoremap <SPACE> <Nop>
let maplocalleader=" "
let mapleader=" "

" move cursor by display line
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1
set noswapfile

" no start message
set shortmess+=I

" theme/coloring
colorscheme dim
syntax on
hi CursorLine none
hi CursorLineNr none
hi clear SignColumn
hi SpellBad ctermbg=none ctermfg=9
hi SpellCap ctermbg=none ctermfg=11
hi error ctermbg=none ctermfg=9
hi todo ctermbg=none ctermfg=11
hi MatchParen ctermbg=8

" gutter column
set signcolumn=yes
set number relativenumber
set cursorline

" indent
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set expandtab
set autoindent
set breakindent
set breakindentopt=shift:4

" don't continue comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" wrap
set wrap linebreak nolist wrapmargin=0 display=lastline

" split mode for new panes
set splitbelow splitright

" tab completion
set wildmenu wildmode=longest,list,full

" search
set incsearch nohlsearch ignorecase smartcase

" autochdir
set autochdir

" nerdtree
nnoremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>f :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" latex
let g:vimtex_view_method='skim'
nmap <localleader>v <plug>(vimtex-view)

" ycm
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_auto_hover=''
set completeopt-=preview
nmap <leader>D <plug>(YCMHover)
