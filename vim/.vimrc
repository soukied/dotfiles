set nocompatible

call plug#begin()

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim',{'as':'catppuccin'}
Plug 'voldikss/vim-floaterm'
Plug 'nordtheme/vim', {'as':'nord'}
Plug 'dylanaraps/wal.vim'
Plug 'https://gitlab.com/madyanov/gruber.vim.git'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/everforest' 
Plug 'dracula/vim', {'as':'dracula'}
Plug 'voldikss/vim-floaterm'

call plug#end()

filetype plugin indent on
syntax on

set mouse=a
set nu rnu
set hidden
set noshowmode
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent smartindent
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
set laststatus=2 " Always show the status line
set novisualbell
set bg=dark
set nocursorline
set guioptions-=m
set guioptions-=T

set guifont=Iosevka\ Nerd\ Font\ 17

set fillchars+=vert:\│
set fillchars+=eob:\ 

colorscheme catppuccin_mocha

let g:lightline = {
			\ 'colorscheme': 'catppuccin_mocha',
			\ }

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let mapleader = " " 
let g:airline#extensions#whitespace#enabled = 0
let NERDTreeShowHidden = 1

" Configuration example
let g:floaterm_title	 = '(terminal) $1/$2'
let g:floaterm_keymap_new	 = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tn'
let g:floaterm_keymap_next   = '<leader>tp'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_autoclose = 2

nnoremap <silent> <F1> <nop>

nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l

nnoremap <silent> q: <nop>

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>

nnoremap <silent> <C-j> <Esc>
nnoremap <silent> <C-k> <Esc>

nnoremap <silent> <leader>bl :buffers<cr>
nnoremap <silent> <leader>bq :bdelete! 

nnoremap <silent> & viW"ty/<C-r>t<CR>

nnoremap <silent> <C-\> :noh<CR>
nnoremap <silent> <F2> :NERDTreeToggle<CR>
vmap <silent> <leader>/ <leader>c<Space>

nnoremap <silent> <F7> :call ZenMode()<CR>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> > >gv
vnoremap <silent> < <gv
vnoremap <silent> <C-c> "+y
nnoremap <silent> <C-p> "+p

augroup assembly_extension
	au! BufRead,BufNewFile *.asm setlocal filetype=asm
augroup END

augroup python_requirements
	au! BufRead,BufNewFile requirements.txt setlocal syntax=python
augroup END

augroup help_quit
	au! FileType help nnoremap <silent> <buffer> <nowait> q :q<CR>
augroup END

function! Toggle_Wrap()
	set wrap!
endfunction

function! ZenMode()
	Goyo
	Limelight!!
endfunction

command ToggleWrap :call Toggle_Wrap()
command Zen :call ZenMode()
