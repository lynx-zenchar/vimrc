" ============================================================================
" SETUP INSTRUCTIONS - Run these BEFORE opening vim with this config
" ============================================================================
"
" STEP 1: Install prerequisites (Debian/Ubuntu example, adjust for your OS)
"   sudo apt install vim git curl exuberant-ctags
"   (exuberant-ctags is required for Tagbar to work)
"
" STEP 2: Create the directory Vundle expects
"   mkdir -p ~/.vim/bundle
"
" STEP 3: Clone Vundle itself into that directory
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" STEP 4: Save this file as ~/.vimrc
"
" STEP 5: Open vim and install all plugins listed below
"   vim +PluginInstall +qall
"   (or open vim normally and run :PluginInstall)
"
" STEP 6: (Optional but recommended) Install a Nerd Font or Powerline font
"   so vim-airline's separators render correctly instead of showing as boxes.
"   e.g. https://www.nerdfonts.com/ then set your terminal font to it.
"
" STEP 7: Restart vim. You should see the hybrid_material colorscheme,
"   airline status bar, and be able to toggle NERDTree (F2) and Tagbar (F8).
"
" TROUBLESHOOTING:
"   - If colorscheme fails to load, the plugin didn't install; re-run :PluginInstall
"   - If Tagbar shows nothing, ctags isn't installed or isn't on your PATH
"   - If :PluginInstall fails on Vundle itself, double check the clone path
"     matches exactly: ~/.vim/bundle/Vundle.vim
" ============================================================================


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
