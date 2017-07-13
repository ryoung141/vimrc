"Don't try to be compatible with basic VI
set nocompatible

"Pathogen setup
execute pathogen#infect()
filetype plugin indent on

"Show line numbers
set number

"Syntax highlighting
syntax on

"Enable mouse
set mouse=a

"Allow normal backspacing
set backspace=indent,eol,start

"Color scheme 
"FOR LINUX:
set t_Co=256
let g:airline_theme='one'
colorscheme one
set background=dark
"FOR WINDOWS:
"set t_Co=256
"set background=light
"colorscheme PaperColor

"Formatting changes
set tabstop=8
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set copyindent

"Search changes
set hlsearch
set incsearch
set wildignore=*.o,*.class "ignores when auto-completing

set undolevels=1000 "remember many levels of undo-ing

"Remappings
noremap <up> <nop>    
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap jk <Esc> 
:noremap \ :set hlsearch! hlsearch?<CR>
cmap w!! w !sudo tee > /dev/null %
map <C-n> :NERDTreeToggle<CR>
map <F5> <C-W>w
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Plugin Settings
"Open NERDTree automatically when vim starts
autocmd vimenter * NERDTree
"Open NERDTree when vim starts w/ no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

