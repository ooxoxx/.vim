" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

set encoding=utf-8

set number
set ruler
"set cursorline
syntax enable
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

set wrap
set tw=0

set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

let &t_SI = "\<ESC>]50;CursorShape=1\x7"
let &t_SR = "\<ESC>]50;CursorShape=2\x7"
let &t_EI = "\<ESC>]50;CursorShape=0\x7"

noremap j h
noremap k j
noremap i k
noremap l l
noremap J 0
noremap K 5j
noremap I 5k
noremap L $
noremap W 5w
noremap B 5b
noremap <C-I> 5<C-y>
noremap <C-K> 5<C-e>
inoremap <C-I> <Esc>5<C-y>a
inoremap <C-K> <Esc>5<C-e>a
imap <C-c> <Esc>zza
nmap <C-c> zz

noremap n i
noremap N I
noremap h e
noremap = nzz
noremap - Nzz
noremap s <nop>

let mapleader=" "
map ; :
map <LEADER>rc :e ~/.vim/vimrc<CR>
map <LEADER>sc :set spell!<CR>
map S :w<CR>
map Q :q<CR>
map R :source ~/.vim/vimrc<CR>

map <LEADER>w <C-w>w
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>
noremap sh <C-w>t<C-w>K
noremap sv <C-w>t<C-w>H
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
map ti :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>
map tmj :-tabmove<CR>
map tml :+tabmove<CR>

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
