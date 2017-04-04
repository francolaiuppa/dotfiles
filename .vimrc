set nocompatible " Use vim configs rather than vi configs. Required. Must be the first line
" set the runtime path to include Vundle and initialize
filetype off                  " required

set rtp+=/home/fran/.vim/bundle/Vundle.vim
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
Plugin 'mhinz/vim-signify'
Plugin 'othree/yajs.vim'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rking/ag.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=2 " make backspace work like most other apps
set number " show line numbers
set laststatus=2 " always show status bar
set cursorline " highlights current line
syntax on " enable syntax coloring
set expandtab " insert spaces when tab is pressed
set ts=2 " a tab is worth 2 spaces
set shiftwidth=2 " each time we indent code we do it with 2 spaces
set noswapfile " do not use swap files as everything I code is under git
set clipboard=unnamedplus " copying data to clipboard
set hlsearch " highlight matching search terms
set scrolloff=10 " show 10 lines when moving cursor around
set showcmd " shows the current command
set cursorline " show a marker at 80 chars
set colorcolumn=80 " show a marker at 80 chars
set encoding=utf-8

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

" The Silver Searcher (ag.vim)
nnoremap \ :Ag<SPACE>
"
" Remove trailing spaces on save [ntpeters/vim-better-whitespace]
autocmd BufWritePre * StripWhitespace
autocmd BufWritePre * CurrentLineWhitespaceOn


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
let mapleader=","
set background=dark
" set background=light
let g:solarized_bold = 0 " disable bold font (actually laughs at this)

colorscheme solarized

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:syntastic_enable_signs=1
let g:statline_syntastic = 0

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers=['jscs']

" extra aliases
let mapleader=","

" NERDTree Aliases
let g:NERDTreeQuitOnOpen=1 " close NERDTree after a file is opened
let NERDTreeShowHidden=1 " show hidden files in NERDTree
let NERDTreeIgnore = ['\.js.map$'] " remove some files by extension
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" " expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>
" " close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""" The Silver Searcher (ag.vim)
nnoremap \ :Ag!<SPACE>
" // in visual mode will search for the selected text
vnoremap // y/<C-R>"<CR>
"""""""" ntpeters/vim-better-whitespace
" Remove trailing spaces on save
autocmd BufWritePre * StripWhitespace
autocmd BufWritePre * CurrentLineWhitespaceOn
"""""""" kien/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

"" Tidy HTML
:vmap ,x :!tidy -q -i --show-errors 0<CR>

