set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'udalov/kotlin-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jdonaldson/vaxe'
call plug#end()

filetype plugin indent on
syntax on
autocmd VimEnter * :NoMatchParen
set nu rnu
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set noundofile nobackup noswapfile
set backspace=indent,eol,start
set encoding=utf-8 fileencoding=utf-8
set nohlsearch
set incsearch
set noshowmode
set wildmenu
set splitright
set splitbelow
set noerrorbells
set ttimeoutlen=0
set cursorline
set vb t_vb=
colorscheme gruvbox
set bg=dark
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
    let &t_SR = "\e[4 q"
endif
if has("gui_running")
	set guifont=FiraCode\ Nerd\ Font\ 11
	colorscheme default
	set bg=light
end
set t_ut=

let g:indentLine_setColors = 0
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1

let mapleader=' '
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

source ~/.vim/coc.vim
