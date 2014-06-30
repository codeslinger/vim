set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rking/ag.vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-fugitive'
Plugin 'uarun/vim-protobuf'
Plugin 'flazz/vim-colorschemes'
call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set textwidth=0
set nobackup
set viminfo='20,\"50
set history=50
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set ignorecase
set hlsearch
set smartcase
set showmatch
set showcmd
set laststatus=2
set nojoinspaces
set keywordprg=dict
set background=dark
set sh=/bin/bash
set matchpairs=(:),{:},[:],<:>
set printoptions=paper:Letter
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*
set magic
set number
syntax on

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

au Filetype go setlocal ts=4 noet ai
au BufRead,BufNewFile *.rs setfiletype rust

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

let g:airline_detect_whitespace=0
let g:airline_theme="dark"

map ., :tabp<CR>
map ,. :tabn<CR>
map TT :tabnew 

colorscheme blackboard
