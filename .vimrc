" Base from https://dougblack.io/words/a-good-vimrc.html
""""""""""""""
" NOTES
""""""""""""""
" :so % will reload vimrc while editing this file

syntax enable
colorscheme monokai
set t_Co=256            " vim-monokai now only support 256 colours in terminal
set colorcolumn=100
set title               " display a title
set ruler
set visualbell          " less noise from vim :)


" Tab spacing and insertion
set tabstop=2
set softtabstop=2
set expandtab

""""""""""""""
" UI Config
""""""""""""""
set number        " show line numbers
set cursorline		" inserts a horizontal line where your cursor is

set showmatch     " highlights matching parens when cursor is over it
set history=100   " default search history is 20

""""""""""""""
" SEARCHES
""""""""""""""
set incsearch     " search as chars are entered
set hlsearch      " highlight matches

" Vim will keep highlighted matches from searches until a new one is run or
" manually stopped with :nohlsearch. This maps <leader><space> to that command
nnoremap <leader><space> :nohlsearch<CR>

""""""""""""""
" MOVEMENT
""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

""""""""""""""""""""""
" LEADER SHORTCUTS 
""""""""""""""""""""""
let mapleader=" "
" insert escape mode
" inoremap jj <esc>

""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""
" using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_flow = 1

Plug 'airblade/vim-gitgutter'
set updatetime=250

call plug#end()
