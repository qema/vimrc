packadd lsp
packadd dispatch

call LspAddServer([#{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp'],
	\    path: '/usr/bin/clangd',
	\    args: ['--background-index', '--clang-tidy']
	\  }])

call LspAddServer([#{
	\    name: 'rustlang',
	\    filetype: ['rust'],
	\    path: '/Users/andrew/.cargo/bin/rust-analyzer',
	\    args: [],
	\    syncInit: v:true
	\  }])

syntax enable
filetype plugin on
filetype plugin indent on

" buffers
set autowrite
set hidden

" timeouts
set timeoutlen=1000 ttimeoutlen=0
set updatetime=300

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
"set termguicolors
"colorscheme zaibatsu

" gutter column
set signcolumn=yes
set number relativenumber
set cursorline

" indent
set tabstop=4 softtabstop=0 smarttab
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
set incsearch nohlsearch smartcase infercase

" autochdir
set autochdir

" buffers
nmap <silent> [b :bp<CR>
nmap <silent> ]b :bn<CR>

" latex
let g:vimtex_view_method='skim'
nmap <localleader>v <plug>(vimtex-view)

" lsp
nmap <localleader>ca :LspCodeAction<CR>
nmap <silent> [d :LspDiag prevWrap<CR>
nmap <silent> ]d :LspDiag nextWrap<CR>
noremap <silent> gd :LspGotoDefinition<CR>
nmap <silent> <localleader>e :LspDiag current<CR>
nmap <silent> <localleader>f :LspFormat<CR>
nmap <silent> <localleader>K :LspHover<CR>
nmap <silent> <localleader>rn :LspRename<CR>
nmap <silent> <localleader>h :LspSwitchSourceHeader<CR>

" dispatch
nmap <silent> <localleader>m :Make<CR>
