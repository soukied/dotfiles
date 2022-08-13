local function call_plugin(use)
	-- Plugin Manager
	use "wbthomason/packer.nvim"
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- Floaterm
	use 'voldikss/vim-floaterm'
	-- Gitsigns
	use {'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end}
	-- NERD Commenter
	use 'preservim/nerdcommenter'
	-- LSPSaga
	use 'glepnir/lspsaga.nvim'
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Startify
	use 'mhinz/vim-startify'
	-- nvim tree
	use {'kyazdani42/nvim-tree.lua', tag='nightly', config = function() require('nvim-tree').setup() end}
	-- Auto pairs
	use "windwp/nvim-autopairs"
	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	-- Devicons
	use "ryanoasis/vim-devicons"
	-- Emmet
	use 'mattn/emmet-vim'
	-- VSCode Dark Theme
	use 'tomasiser/vim-code-dark'
	-- Gruvbox Color
	use 'morhetz/gruvbox'
	-- Onedark
	use 'joshdick/onedark.vim'
	-- Dracula Theme
	use {"dracula/vim", as = "dracula"}
	-- Polyglot
	use 'sheerun/vim-polyglot'
	-- Lua line
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = function() require('lualine').setup() end
	}
	-- Tabline
	use {'kdheepak/tabline.nvim',config = function() require('tabline').setup() end}
	-- Nord Theme
	use 'arcticicestudio/nord-vim'
  if packer_bootstrap then
    require('packer').sync()
  end
end

local loaded, packer = pcall(require, 'packer')
if not loaded then
	vim.notify("Packer is not installed")
	return
end

packer.startup({
	call_plugin,
	config = {
		display = {
			open_fn = require('packer.util').float
		}
	}
})
