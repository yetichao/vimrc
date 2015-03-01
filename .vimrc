" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab
set smarttab
set autoindent
set smartindent

"search
set hlsearch
set incsearch
set smartcase
set ignorecase

"encodings
set fileencodings=ucs-bom,utf-8,gbk,GB18030

"fonts
if has("gui_running")
    "set gfn=Terminus\ Bold\ 16
    color koehler
endif

"for fcitx.vim
set ttimeoutlen=100

"backup file
set nobackup
set nowritebackup
set noswapfile
"text wrap
"set textwidth=72
"set formatoptions+=tcnm
"spell check
"map


"======dokuwiki vim======
" enable syntax highlighting
syntax on

" Highlight redundant whitespaces and tabs.
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t$\|\t$/

" use 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" always show ^M in DOS files
set fileformats=unix,dos,mac

"syntax color
syntax enable
syntax on
highlight Comment ctermfg=lightBlue
highlight Comment guifg=lightBlue

"folding
"set nofoldenable
set foldmethod=manual
set nocompatible
set backspace=2
"command buff
set showcmd
set cmdheight=1

" ruler
"set ruler
"set rulerformat=%Y\ %l:%c%V\ %P


"auto reload
set autoread
"autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost ~/.vimrc source %
source ~/.vim-as-a-python-ide.rc
