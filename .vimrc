set nocompatible " Use vim configs rather than vi configs. Required. Must be the first line
set backspace=2 " make backspace work like most other apps
set number " show line numbers
set laststatus=2 " always show status bar
set cursorline " highlights current line
filetype off                  " required
syntax on " enable syntax coloring
set expandtab " insert spaces when tab is pressed
set ts=2 " a tab is worth 2 spaces
set shiftwidth=2 " each time we indent code we do it with 2 spaces
set noswapfile " do not use swap files as everything I code is under git

" disable arrow keys in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" same but for normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" toggle :set paste / :set nopaste
set pastetoggle=<F10>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-signify'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
let s:grep_available = 0
let g:solarized_termcolors=1
let mapleader=","
set background=dark
colorscheme solarized


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:syntastic_enable_signs=1

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers=['jscs']
