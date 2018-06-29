set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'danro/rename.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'junegunn/goyo.vim'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'w0rp/ale'
Plugin 'vim-scripts/mru.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

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
map <C-n> :lugin 'mileszs/ack.vim'NERDTreeToggle<CR>

" airline
set laststatus=2

" fzf
set rtp+=~/.fzf
map <C-f> :Files<CR>

set number

" colorscheme
set t_Co=256
set background=dark
colorscheme PaperColor