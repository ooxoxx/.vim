"===
"=== plugins
"===

call plug#begin('/tools/neovim/Neovim/share/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-python/python-syntax'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()


"===
"=== fix airline_symbols
"===

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


"===
"=== my configurations
"===
syntax on
colorscheme dracula
let g:airline_theme = 'tomorrow'
let g:python_highlight_all = 1
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
set number
set splitright
set splitbelow
set tabstop=4
set shiftwidth=4
set expandtab

"===
"=== my keymappings
"===
let mapleader = ","
nmap <Leader>c :!python %<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
