call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nelsyeung/twig.vim'

call plug#end()

let g:coc_filetype_map = {
            \ 'htmldjango': 'html',
            \ 'html.twig': 'html',
            \ }

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set cursorcolumn
set relativenumber
set tabstop=4
set shiftwidth=4
set showmode
set hlsearch
set nowrap
set expandtab
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpeg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.mp4

colorscheme molokai

autocmd BufRead *.twig set syntax=html filetype=html

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
