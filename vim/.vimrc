set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" editor plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" language specific plugins
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex'

" theming plugins
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()
filetype plugin indent on

syntax on

" indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround
set cindent
set expandtab
nnoremap <C-i> gg=G

" vcs
set nobackup
set nowritebackup 
set noswapfile 

set hidden
set autoread
set noshowmode

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
inoremap jk <esc>

" vsplit
noremap <leader>v <C-w>v

" split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap / /\v
vnoremap / /\v

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeMinimalUI=1

" vimtex
let g:tex_flavor = "latex"

" airline
set laststatus=2

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set number

" colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
