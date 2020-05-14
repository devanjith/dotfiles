call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tomasr/molokai'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-scripts/loremipsum'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'

"Potato PC can't run these two.
"Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

syntax on
colorscheme molokai
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

filetype plugin indent on
set termguicolors
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title
set colorcolumn=79
set cursorline
set viminfo=""
set clipboard=unnamedplus
set autochdir
set autoread

"let mapleader=","

"NerdTree
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

"Deoplete
"let g:deoplete#enable_at_startup = 1

"Airline
let g:airline_powerline_fonts = 1

"goyo+limelight
autocmd! User GoyoEnter Limelight | set spell
autocmd! User GoyoLeave Limelight!

"colorizer
lua require 'colorizer'.setup()

"emmet
let g:user_emmet_leader_key = ','


":nohlsearch on <RETURN>
nnoremap <CR> :nohlsearch<CR><CR>

"map <Esc> to jk
inoremap jk <Esc>

""" Filetype-Specific Configurations

"Web dev
autocmd FileType html,css,*script*,json setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Markdown
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2

