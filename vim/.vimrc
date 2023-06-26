set nocompatible

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'vimwiki/vimwiki'
" Plug 'tribela/vim-transparent'
Plug 'nordtheme/vim', { 'as': 'nord' }
Plug 'ryanoasis/vim-devicons'
Plug 'cohama/lexima.vim'
Plug 'sainnhe/gruvbox-material', { 'as' : 'gruvboxmaterial' }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'sheerun/vim-polyglot'
Plug 'catppuccin/vim', {'as' : 'catppuccin'}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'

call plug#end()

filetype plugin indent on
syntax on

set tabstop=4 shiftwidth=4 softtabstop=4
set nu rnu
set smartindent autoindent
set nobackup noswapfile
set backspace=indent,start,eol
set laststatus=2
set encoding=utf-8
set nu rnu
set hlsearch
set incsearch
set wildmenu
set cursorline
set mouse=a
set shortmess-=S
set termguicolors
set hidden
set fileencoding=utf-8 encoding=utf-8
set splitbelow
set splitright
set ttimeoutlen=50
set bg=dark
set noshowmode

colorscheme codedark

set guifont=Monospace\ 12

" Emmet configuration
let g:lightline = {
			\ 'colorscheme' : 'codedark',
			\ 'separator': { 'left': "", 'right': "" },
			\ 'subseparator': { 'left': "", 'right': "" },
			\}
let g:airline_theme="nord"
let g:user_emmet_leader_key = '<C-p>'

let mapleader=" "

let NERDTreeShowHidden=1
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

execute "set <M-h>=è"
execute "set <M-j>=ê"
execute "set <M-k>=ë"
execute "set <M-l>=ì"

" Escape switching
inoremap <silent> <C-J> <Esc>
inoremap <silent> <C-K> <Esc>
vnoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-K> <Esc>
inoremap <silent> <M-K> <Esc>k
inoremap <silent> <M-J> <Esc>j
inoremap <silent> <M-K> <Esc>k
inoremap <silent> <M-L> <Esc>l

" Exit terminal mode
tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <C-j> <C-\><C-n>
tnoremap <silent> <C-k> <C-\><C-n>

" Tab indent on visual
vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv

nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> q: <nop>

nnoremap <silent> <F4> :Goyo<cr>

" Augroup

let g:user_emmet_install_global = 0
let g:lexima_disable_on_nofile = 1

augroup emmet_html
	au!
	au FileType html,css EmmetInstall
augroup END

augroup terminal_mode
	au!
	au TerminalOpen * setlocal nocursorline nonu nornu
augroup END

augroup txt_spellcheking
	au!
	au FileType text setlocal spell spelllang=en_us
augroup END

augroup html_tabsize
	au!
	au FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
