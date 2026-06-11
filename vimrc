" 1. REQUIRED VUNDLE INITIALIZATION
set nocompatible              " Be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " If you want them in 'plugged', use: call vundle#begin('~/.vim/plugged')

" 2. PLUGIN LIST (All Plugins MUST be between begin and end)
Plugin 'VundleVim/Vundle.vim'          " Let Vundle manage Vundle
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tribela/vim-transparent'
Plugin 'vim-scripts/AutoComplPop'

call vundle#end()            " required
filetype plugin indent on    " required

" 3. GENERAL SETTINGS
syntax on
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showmode
set showmatch
set hlsearch
set history=1000
set autoindent
set ruler
set showcmd
set termwinsize=12x0
set splitbelow
set cursorline

" 4. APPEARANCE & THEME (Must come AFTER the plugins are loaded)
set background=dark

" Enable True Color support for modern terminals
if (has("termguicolors"))
  set termguicolors
endif

colorscheme hybrid_material

" 5. PLUGIN SPECIFIC CONFIGURATIONS
let g:AutoPairsShortcutToggle = '<C-P>'

" Airline stuff
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled=1

" NerdTree stuff
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 31
nmap <F2> :NERDTreeToggle<CR>

" Tagbar stuff
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'
nmap <F8> :TagbarToggle<CR>

nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>
