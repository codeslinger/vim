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
Plugin 'kchmck/vim-coffee-script'
Bundle 'wting/rust.vim'
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
au BufNewFile,BufReadPost *.md set filetype=markdown

if isdirectory(expand("~/.vim/bundle/ctrlp.vim/"))
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("e")': [],
      \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
      \ }
    if executable('ag')
        let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
    elseif executable('ack-grep')
        let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
    elseif executable('ack')
        let s:ctrlp_fallback = 'ack %s --nocolor -f'
    else
        let s:ctrlp_fallback = 'find %s -type f'
    endif
    let g:ctrlp_user_command = {
        \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
        \ 'fallback': s:ctrlp_fallback
        \ }
endif

if isdirectory(expand("~/.vim/bundle/vim-airline/"))
    let g:airline_detect_whitespace=0
    let g:airline_theme="wombat"
    let g:airline_left_sep='›'  " Slightly fancier than '>'
    let g:airline_right_sep='‹' " Slightly fancier than '<'
endif

map tp :tabp<CR>
map tn :tabn<CR>
map TT :tabnew 

colorscheme blackboard
