vim9script

if has('gui_running')
## GUI Config/hide tool bar and menu bar
        set guioptions-=m
        set guioptions-=T
        set guifont=CaskaydiaCove_Nerd_Font_Mono:h12
        autocmd GUIEnter * simalt ~x
endif


## basic config
set novb
set noswapfile
set number
set relativenumber
set textwidth=80
set wrap
set linebreak
set cursorline
set nocompatible
set showmode
set showcmd
set mouse=a
set cc=+1
set mouse=a
set encoding=utf-8
set tabstop=8
set shiftwidth=8
set expandtab
set softtabstop=8
set laststatus=2
set wrapmargin=2
set updatetime=100
set incsearch
set hlsearch
set noundofile
set nobackup
set pumheight=10
set backspace=2

filetype plugin on
filetype indent on
syntax on

set background=dark
# colorscheme gruvbox
colorscheme one
