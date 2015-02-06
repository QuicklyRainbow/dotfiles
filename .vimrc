set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""
" PLUGINS "
"""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'
" Syntax checking
Plugin 'scrooloose/syntastic'
" Fuzzy search
Plugin 'kien/ctrlp.vim'
" Markdown support
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'
" Use better words
Plugin 'reedes/vim-wordy'
" Get dat sweet ruler
Plugin 'bling/vim-airline'
" tmux
Plugin 'christoomey/vim-tmux-navigator'
" Easy navigation
Plugin 'Lokaltog/vim-easymotion'
" Snipmate and its dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Sweet undo history
Plugin 'mbbill/undotree'
" Autocomplete 
Plugin 'Shougo/neocomplcache.vim'

" Syntax highlighting options
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'

" Clojure
Plugin 'vim-scripts/VimClojure'
Plugin 'kien/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""
" MISC "
""""""""
set ruler
set background=dark
set number
set scrolloff=5 " Keeps cursor 5 lines away from top and bottom
set wildmenu " Autocomplete vim commands
set hid " Maybe deal with double ruler issue?
set mouse=a " Move cursor with mouse

set autoindent " Auto indent new lines
set smartindent " Return ending brackets

set ignorecase " Ignore case when searching
set incsearch " Search like a browser

""""""""""""""""""
" Key remappings "
""""""""""""""""""
" Don't require shift to execute commands from vim`
nnoremap ; :
" Move cursor vertically by wordwrapped line
nnoremap j gj
nnoremap k gk
" Remap Leader key
let mapleader = "\<Space>"
" <Space>o to open a new file
nnoremap <Leader>o :CtrlP<CR>
" <Space>w to save files
nnoremap <Leader>w :w<CR>
" <Space>q to close files
nnoremap <Leader>q :q<CR>
" Use system copy/paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
" Sweet distraction free mode
nnoremap <silent> <leader>z :Goyo<cr>
" Remap search keys
map <c-space> /
" Undotree toggle
nnoremap <F5> :UndotreeToggle<cr>
" Enable autocomplete at startup
let g:neocomplcache_enable_at_startup = 1
" Use tab to autocomplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Become a man
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>


"""""""""""""""
" ERROR BELLS "
"""""""""""""""
set ruler
set noerrorbells
set novisualbell
set t_vb=
set tm=500
""""""""""""""""""""
" Turn off backups "
""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""
" Tabs "
""""""""
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
" Linebreak on 500 characters
set lbr
set tw=500

"""""""""""""""
" Status Line "
"""""""""""""""
" Always show the status line
set laststatus=2
let g:airline_powerline_fonts = 1

let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''


"""""""""""
" Clojure "
"""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""
" SYNTAX "
""""""""""
colorscheme Tomorrow-Night-Eighties
syntax on
if !has("gui_running")
  set t_Co=256
endif
set guifont =Source\ Code\ Pro\ for\ Powerline:h15 
