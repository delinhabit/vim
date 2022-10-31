call plug#begin('~/.vim/plugged')

" Syntax and language specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'tomasiser/vim-code-dark'
Plug 'editorconfig/editorconfig-vim'
Plug 'maralla/completor.vim'

" Other plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale', { 'tag': 'v3.1.0' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'

call plug#end()

" Editor configuration
colorscheme codedark
set backspace=indent,eol,start
set nobackup
set noswapfile
set nocompatible
set autoindent
set smartindent
set showmatch
set incsearch
set cindent
set expandtab
set colorcolumn=120
set number
set pastetoggle=<F2>
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set showmode
set foldmethod=indent
set foldlevel=99
set laststatus=2
set ttimeoutlen=50

highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>

" Editor mappings
let mapleader=","
map ; $
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
cabbrev Q quit
cabbrev W write
cabbrev Wq wq

" Folding / expanding
nnoremap <space> za
vnoremap <space> zf

" Run gsv to reload the vimrc file
nnoremap gsv :so $MYVIMRC<CR>

" JavaScript configuration
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" ALE configuration
let g:ale_linters = {
\    'javascript': ['eslint'],
\    'python': ['flake8']
\}
let g:ale_fixers = {
\    'python': ['isort'],
\    'javascript': ['eslint']
\}
let g:ale_javascript_eslint_executable = 'yarn run eslint'
let g:ale_javascript_eslint_use_global = 1
let g:ale_fix_on_save = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 5

nmap <F3> <Plug>(ale_fix)

" NERDTree configuration
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <C-n> :NERDTreeToggle %<CR>

" YAML files configuration
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
