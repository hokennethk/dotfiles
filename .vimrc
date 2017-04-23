" Base from https://dougblack.io/words/a-good-vimrc.html
syntax enable
colorscheme monokai
set t_Co=256     " vim-monokai now only support 256 colours in terminal
set colorcolumn=100


" Tab spacing and insertion
set tabstop=2
set softtabstop=2
set expandtab

set number
set cursorline		" inserts a horizontal line where your cursor is

set showmatch     " highlights matching parens when cursor is over it

""""""""""""""
" SEARCHES
""""""""""""""
set incsearch     " search as chars are entered
set hlsearch      " highlight matches

" Vim will keep highlighted matches from searches until a new one is run or
" manually stopped with :nohlsearch. This maps <space> to that command
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
" insert escape mode
inoremap jj <esc>
