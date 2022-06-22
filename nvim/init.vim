call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim', {'branch':'main'}
Plug 'dracula/vim', {'as':'dracula'}
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Plug 'wfxr/minimap.vim'
" Auto Complete
Plug 'vimsence/vimsence' " Discord rich presence
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'tribela/vim-transparent'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-autopairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovim/nvim-lspconfig'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'udalov/kotlin-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'junegunn/fzf'
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
set hidden
set incsearch
set splitright
set splitbelow
set wildmenu
set cursorline
set noshowmode
set completeopt=menu,menuone,noselect

" let g:solarized_termcolors=256
colorscheme gruvbox
set bg=dark

if has("gui_running")
	set cursorline
	set guifont=FiraCode\ Nerd\ Font\ 11
end

" Pyenv VirtualEnv variable

let g:indentLine_setColors = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1

let mapleader = ' '
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

"Disable Arrow Key
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
xnoremap <Up> <Nop>
xnoremap <Down> <Nop>
xnoremap <Left> <Nop>
xnoremap <Right> <Nop>

noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
nnoremap <silent> <c-up> :resize +1<CR>
nnoremap <silent> <c-down> :resize -1<CR>
nnoremap <silent> <c-right> :vertical resize -1<CR>
nnoremap <silent> <c-left> :vertical resize +1<CR>
nnoremap <silent> <leader>hh <C-W>h
nnoremap <silent> <leader>jj <C-W>j
nnoremap <silent> <leader>kk <C-W>k
nnoremap <silent> <leader>ll <C-W>l

inoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-J> <Esc>
nnoremap <silent> <C-J> <nop>
nnoremap <C-T> :NERDTreeToggle<CR>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> > >gv
vnoremap <silent> < <gv

" Find files using Telescope command-line sugar.
nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>fb <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>fh <cmd>Telescope help_tags<cr>

" Lua Configurations
lua << EOF
require('soukied.treesitter')
require('nvim-autopairs').setup{}
require('soukied.lsp')
require('soukied.lspsaga')
EOF
