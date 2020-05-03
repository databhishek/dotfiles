set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-markdown'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim'

call plug#end()
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
nnoremap <C-i> gg=G

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

" MRU
map <leader>f :MRU<CR>

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

" fzf
set rtp+=~/.fzf
map <C-f> :Files<CR>

set number

" colorscheme
set t_Co=256
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
