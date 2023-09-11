set nocompatible

call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'mg979/vim-visual-multi'
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/vim',{'as':'catppuccin'}
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
set hlsearch
set wildmenu
set guifont=Monospace\ 16
set laststatus=2 " Always show the status line
set novisualbell
set bg=dark
set ruler
set foldmethod=marker
set foldenable
set nocursorline
set guioptions-=m
set guioptions-=T
set updatetime=50
" set statusline=\ -*%n:%H%R%{FugitiveStatusline()}*-\ \ %t\ \ \ \ \ \ \ \ \ \ %P\ \(%l,%c\)
set statusline=\ -*%n:%H%R
if exists('function#FugitiveStatusline')
	set statusline+=%{FugitiveStatusline()}
	echo 'It exists'
endif
set statusline+=*-
set statusline+=\ \ \ \ %t
set statusline+=\ \ \ \ \ \ \ \ 
set statusline+=%P\ (%l,%c)

set guifont=Iosevka\ Nerd\ Font\ 17

set fillchars+=vert:\│
set fillchars+=eob:\ 

colorscheme everforest

let mapleader = " " 
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden = 1

let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0

let g:user_emmet_leader_key=','

nnoremap <silent> <F1> <nop>

nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l

nnoremap <silent> q: <nop>

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>

inoremap <silent> <C-j> <Esc>
cnoremap <silent> <C-j> <C-\><C-n>
inoremap <silent> <C-k> <Esc>
cnoremap <silent> <C-k> <C-\><C-n>

nnoremap <silent> <leader>bl :buffers<cr>
nnoremap <silent> <leader>bq :bdelete! 

nnoremap <silent> & viW"ty/<C-r>t<CR>

nnoremap <silent> <C-\> :noh<CR>
nnoremap <silent> <F2> :e.<CR>
vmap <silent> <leader>/ <leader>c<Space>

nnoremap <silent> <F7> :call ZenMode()<CR>

" Terminal mapping

tnoremap <silent> <nowait> <C-\> <C-\><C-n>:q!<CR>
nnoremap <silent> <nowait> <C-\> :term<CR>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> > >gv
vnoremap <silent> < <gv
vnoremap <silent> <C-c> "+y
nnoremap <silent> <C-p> "+p

nnoremap <silent> <leader>hc :noh<CR>

augroup assembly_extension
	au! BufRead,BufNewFile *.asm setlocal filetype=asm
augroup END

augroup python_requirements
	au! BufRead,BufNewFile requirements.txt setlocal syntax=python
augroup END

augroup vimrc_run
	au! BufRead,BufNewFile .vimrc nnoremap <silent> <buffer> <F5> :%source<CR>
augroup END

augroup help_quit
	au! FileType help nnoremap <silent> <buffer> <nowait> q :q<CR>
augroup END

augroup html_rules
	au! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
	au! FileType html EmmetInstall
augroup END

augroup gdscript_syntax
	au! BufRead,BufNewFile *.gd setlocal ft=gdscript
	au! BufRead,BufNewFile *.gdscript setlocal ft=gdscript
augroup END

function! Toggle_Wrap()
	set wrap!
endfunction

function! ZenMode()
	Goyo
	Limelight!!
endfunction

command! ToggleWrap :call Toggle_Wrap()
command! Zen :call ZenMode()
