" Wes Doyle vimrc
set nocompatible
syntax on
filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>


let b:ale_linters = ['flake8']
let b:ale_fixers = [
      \   'remove_trailing_lines',
      \   'isort',
      \   'ale#fixers#generic_python#BreakUpLongLines',
      \   'yapf',
      \]

nnoremap <buffer> <silent> <LocalLeader>= :ALEFix<CR>


Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'janko-m/vim-test'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'davidhalter/jedi-vim'
Plugin 'wadackel/vim-dogrun'
Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()

filetype plugin indent on

" colors
set term=screen-256color
colorscheme dogrun
let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
highlight ColorColumn ctermbg=black
set colorcolumn=80


set autoindent
set bg=dark
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set linebreak
set nobackup
set noerrorbells
set nolist
set noswapfile
set novb
set nowrap
set number
set ruler
set scrolloff=8
set showmatch
set shiftwidth=2
set shortmess=I
set showcmd
set showmode
set sidescroll=1
set sidescrolloff=7
set smartcase
set relativenumber
set softtabstop=2
" set ttimeout
" set timeoutlen=100
" set ttimeoutlen=100
set undolevels=100
set nrformats-=octal
set vb
set path+=**
let g:syntastic_python_flake8_args = "--ignore=E501 --max-complexity 10"

"CtrlP
let g:ctrlp_map = '<c-p>'

"NERDTree
map <C-n> :NERDTreeToggle<CR>

let test#python#runner = 'pytest'

"Gvim mods
set encoding=utf-8
set hidden
set history=100
set mouse=a

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo
set guifont=Monospace\ 15

"nerd-commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
map <silent> <leader>t : TestNearest<CR>
nmap <silent> <leader>T : TestFile<CR>
nmap <silent> <leader>a : TestSuite<CR>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

packadd! matchit
set matchpairs+=<:>
set showmatch
set matchtime=3
" Remove all trailing whitespace by pressing F4
noremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ for\ Powerline\ Medium\ 16
        colorscheme iceberg
    endif
endif
