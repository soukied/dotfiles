call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()

filetype plugin on
filetype indent off
syntax off

set shortmess+=I
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set termguicolors
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set noswapfile 
set laststatus=2
set ttimeoutlen=50
set splitright splitbelow
set wildmenu
set guifont=Monospace\ 16

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set fillchars=eob:\ 

let mapleader = " " 

nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>

" Set the status line appearance
set laststatus=2 " Always show the status line
set statusline=%<-----Vim:\ %f " Show the full file path
set statusline+=%=(fundamental)--L%l--------------

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv

augroup NOPARENHI
	au! VimEnter * :NoMatchParen
augroup END
