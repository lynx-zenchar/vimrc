" These always install these for a new system (Vundle) \/\/\/
" $ mkdir -p ~/.vim/bundle
" cd ~/.vim/bundle
" git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim
" after Vundle install, enter this inside vim- :PluginInstall
" to install the stuff in here, enter in terminal- vim +PluginInstall +qall"
"
" These are basic functinoality setups for vim
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
" set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showmode
set showmatch
set hlsearch
set history=1000
set autoindent
syntax on
set background=dark
colorscheme hybrid_material
set ruler
set showcmd
set termwinsize=12x0 "activate terminal by saying :term inside vim
set splitbelow
set cursorline
" Boilerplate Code
set nocompatible
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')
" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
Plugin 'sheerun/vim-polyglot'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle = '<C-P>'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tribela/vim-transparent'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Yggdroot/indentLine'
"airline stuff
"let g:airline_powerline_fonts = 1
"
"show PASTE if in paste mode
let g:airline_detect_paste=1
"show airline tabs too
let g:airline#extensions#tabline#enabled=1
"NerdTree stuff press f2 to activate
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns
nmap <F2> :NERDTreeToggle<CR>


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

"tagbar
" Plugin 'preservim/tagbar'
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>
"execute 'packadd YouCompleteMe'
"

Plugin 'kylelaker/riscv.vim'
Plugin 'henry-hsieh/riscv-asm-vim'
set t_Co=256
