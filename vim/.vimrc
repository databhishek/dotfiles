set nocompatible " fuck VI
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'indenthtml.vim'
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
Plugin 'wakatime/vim-wakatime'
Plugin 'xuhdev/vim-latex-live-preview'

syntax on " syntax highlighting

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " match indents on new lines.
set smartindent " intellegently dedent / indent new lines based on rules.

" vcs ftw
set nobackup
set nowritebackup 
set noswapfile 

set hidden " allow me to have buffers with unsaved changes
set autoread " autoload changed file on disk

" search
set ignorecase " case insensitive search
set smartcase " if there are uppercase letters, become case-sensitive
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default

" allow the cursor to go anywhere in visual block mode
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of keybindings
let mapleader = ","

" no shift for command mode
nnoremap ; :
vnoremap ; :

" no escape for insert mode
inoremap jf <esc>

" create new vsplit, and switch to it
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>

noremap j gj
noremap k gk

" map the key for toggling comments with vim-commentary
nnoremap <leader>c <Plug>CommentaryLine

" map nerdtree
map <C-n> :NERDTreeToggle<CR>

" make vim-airline work
set laststatus=2

" remap ctrlp to ctrl-t
let g:ctrlp_map = '<c-t>'

" let ctrlp have up to 30 results.
let g:ctrlp_max_height = 30

set number

" colorscheme settings
set background=dark
set t_Co=256
colorscheme gruvbox