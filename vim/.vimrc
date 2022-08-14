set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'cohama/lexima.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdcommenter'
" Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
call plug#end()

filetype plugin indent on
syntax on

autocmd VimEnter * :NoMatchParen

set nu rnu
set smartindent autoindent
set tabstop=4 softtabstop=4 shiftwidth=4
set noundofile noswapfile nobackup
set backspace=indent,eol,start
set wildmenu
set noshowmode
set hidden
set splitright splitbelow
set laststatus=2
set cursorline
set encoding=utf-8 fileencoding=utf-8
set ttimeoutlen=50

colorscheme codedark

if has("gui_running")
	set guifont=FiraCode\ Nerd\ Font\ 12
endif

let g:user_emmet_leader_key='<C-P>'
let mapleader = " "
let g:lightline = {
	\ 'colorscheme':'codedark',
	\ 'enable' : {
		\ 'tabline' : 1,
		\ }
	\ }

let g:lightline.tabline = {
	\ 'left': [ [ 'tabs' ] ],
	\ 'right': [ [ 'close' ] ] }


let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set bg=dark

execute "set <M-j>=\ej"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
execute "set <M-k>=\ek"

inoremap <silent> <M-h> <Esc>h
inoremap <silent> <M-j> <Esc>j
inoremap <silent> <M-k> <Esc>k
inoremap <silent> <M-l> <Esc>l

nnoremap <silent> <M-h> h
nnoremap <silent> <M-j> j
nnoremap <silent> <M-k> k
nnoremap <silent> <M-l> l

vmap <silent> <leader>/ <leader>c<space>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>
nnoremap <silent> <C-T> :NERDTreeToggle<cr>
nnoremap <silent> <C-P> :FZF<cr>
inoremap <silent> <C-J> <Esc>
xnoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-J> <Esc>
cnoremap <silent> <C-J> <Esc>
inoremap <silent> <C-K> <Esc>
xnoremap <silent> <C-K> <Esc>
vnoremap <silent> <C-K> <Esc>
cnoremap <silent> <C-K> <Esc>
