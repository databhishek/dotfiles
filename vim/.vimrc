set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
filetype plugin indent on

syntax on

" indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround
set autoindent
set smartindent

" vcs
set nobackup
set nowritebackup 
set noswapfile 

set hidden
set autoread

" search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set virtualedit+=block

let mapleader = ","

" no shift command mode
nnoremap ; :
vnoremap ; :

" no escape insert mode
inoremap jf <esc>

" vsplit
noremap <leader>v <C-w>v

" split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap / /\v
vnoremap / /\v

noremap j gj
noremap k gk

" vim-commentary
nnoremap <leader>c <Plug>CommentaryLine

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" airline
set laststatus=2

" ctrlp
let g:ctrlp_map = '<c-t>'
let g:ctrlp_max_height = 30

set number

" colorscheme
set t_Co=256
set background=dark
colorscheme gruvbox
