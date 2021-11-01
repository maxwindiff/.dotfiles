" General options
set nocp
set nobackup
set noswapfile

set title

set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set shiftround
set expandtab
set smarttab

set ruler
set splitright

set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch
set hls

set showmatch
set matchtime=1

set cursorline
set cursorlineopt=screenline

set autowrite
set nobackup

set wildmenu
set wildmode=longest:full
set wildignore=*.swp,*.bak,*.pyc,*.cla

" Key mapping
map <F1> :set hls!<CR>
set pastetoggle=<F2>

map <F6> :set guifont=Monaco:h12<CR><C-W>=
map <F7> :set guifont=Monaco:h13<CR><C-W>=
map <F8> :set guifont=Monaco:h14<CR><C-W>=

map <C-H> :w<CR>

noremap Q gq
noremap j gj
noremap k gk
set display+=lastline

syn on
filetype plugin indent on
color koehler
