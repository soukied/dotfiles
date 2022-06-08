set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'cohama/lexima.vim'
call plug#end()

filetype plugin indent on
syntax on

autocmd VimEnter * :NoMatchParen

set nu rnu
set smartindent autoindent
set tabstop=4 softtabstop=4 shiftwidth=4
set noundofile noswapfile nobackup
set backspace=indent,eol,start
set ttimeoutlen=50
set splitright splitbelow

if has("gui_running")
	set cursorline
	set guifont=FiraCode\ Nerd\ Font\ 12
endif



let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set bg=dark
