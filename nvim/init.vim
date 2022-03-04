
call plug#begin()
" Plug 'neoclide/coc.nvim', { 'branch':'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Auto Complete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'cohama/lexima.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovim/nvim-lspconfig'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'udalov/kotlin-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'junegunn/fzf'
Plug 'jdonaldson/vaxe'
Plug 'ryanoasis/vim-devicons'
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
set clipboard+=unnamedplus
set nohlsearch
set ttimeoutlen=0
set hidden
set incsearch
set splitright
set splitbelow
set wildmenu
set cursorline
set noshowmode
set completeopt=menu,menuone,noselect

" let g:solarized_termcolors=256
colorscheme nord
set bg=dark

if has("gui_running")
	set cursorline
	set guifont=FiraCode\ Nerd\ Font\ 11
end

let g:indentLine_setColors = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1

let mapleader = ' '
let g:user_emmet_leader_key = '<C-e>'
"Disable Arrow Key
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <silent> <c-up> :resize +1<CR>
nnoremap <silent> <c-down> :resize -1<CR>
nnoremap <silent> <c-right> :vertical resize -1<CR>
nnoremap <silent> <c-left> :vertical resize +1<CR>

inoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-J> <Esc>
nnoremap <silent> <C-J> <nop>
nnoremap <C-T> :NERDTreeToggle<CR>
nnoremap <F12> :FloatermToggle<CR>
nnoremap <F2> :CocDiagnostics<CR>
nnoremap <silent> <C-P> :FZF<CR>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv

" source ~/.config/nvim/coc.vim

lua << EOF
require 'soukied.lsp'
require 'soukied.lspsaga'
require 'soukied.treesitter'
EOF
