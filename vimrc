call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype plugin indent on

set backspace=indent,eol,start
set nocompatible
set autoindent
set smartindent
set showmatch
set incsearch
set cindent
set expandtab
set colorcolumn=80
set number
cabbrev Q quit
cabbrev W write

set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set showmode
set foldmethod=indent
set foldlevel=99

colorscheme ir_black

autocmd FileType python autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType html autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType css autocmd BufWritePre <buffer> :%s/\s\+$//e
:map ; $
:map - 1G
:map \ $G
:imap jj <Esc>
:map zz <Esc>:wq
:map <c-j> <c-w>j
:map <c-k> <c-w>k
:map <c-l> <c-w>l
:map <c-h> <c-w>h

:let g:pep8_ignore="E123,E128"

augroup filetypedetect
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

if has("autocmd") && exists("+omnifunc")
    autocmd Filetype octave
    \ if &omnifunc == "" |
    \  setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif
