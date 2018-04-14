" Base from https://dougblack.io/words/a-good-vimrc.html
""""""""""""""
" NOTES
""""""""""""""
" :so % will reload vimrc while editing this file

syntax enable
colorscheme onedark
set t_Co=256            " vim-monokai now only support 256 colours in terminal
set colorcolumn=100
set title               " display a title
set ruler
set visualbell          " less noise from vim :)
set laststatus=2


" Tab spacing and insertion
set tabstop=2
set softtabstop=2
set expandtab

""""""""""""""
" COLOR SCHEME
""""""""""""""
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" set background=dark
colorscheme onedark
set t_Co=256            " vim-monokai now only support 256 colours in terminal
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
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'


Plug 'pangloss/vim-javascript'
let g:javascript_plugin_flow = 1

Plug 'elmcast/elm-vim'
let g:elm_format_autosave = 1

Plug 'airblade/vim-gitgutter'
set updatetime=250

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

call plug#end()
