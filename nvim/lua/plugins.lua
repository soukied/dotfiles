local plugin_setup = function(use)
	use 'wbthomason/packer.nvim'

	-- Vim Language Support
	use 'sheerun/vim-polyglot'
	-- Floating Terminal Support
	use {
		'voldikss/vim-floaterm',
		config = function()
			vim.g.floaterm_keymap_new    = '<F7>'
			vim.g.floaterm_keymap_prev   = '<F8>'
			vim.g.floaterm_keymap_next   = '<F9>'
			vim.g.floaterm_keymap_toggle = '<F12>'
		end
	}
	-- LSP support
	use 'neovim/nvim-lspconfig'
	use {
		'tami5/lspsaga.nvim',
		branch = 'main',
		config = function()
			local saga_loaded, saga = pcall(require,"lspsaga")
			if saga_loaded then
				saga.init_lsp_saga {}
			end
		end
	}
	-- Vim Gitgutter
	use {'lewis6991/gitsigns.nvim', config = function() require("gitsigns").setup() end}
	-- Buffer Tablibe
	use 'pacha/vem-tabline'
	-- Indent Line
	-- use "lukas-reineke/indent-blankline.nvim"
	-- Completion LSP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- Transparent Background
	use 'tribela/vim-transparent'
	-- Discord Rich Presence
	use {
		'andweeb/presence.nvim',
		config = function()
			local presence_loaded, presence = pcall(require, 'presence')
			if not presence_loaded then return end
		end
	}
	-- Comment Toggle
	use {
		'terrortylor/nvim-comment',
		config = function() require("nvim_comment").setup() end
	}
	-- Tree-sitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
	-- Emmet
	use {
	'mattn/emmet-vim' }
	-- Firenvim
	use {
		'glacambre/firenvim',
		run = function() vim.fn['firenvim#install'](0) end
	}
	-- themes
	use 'joshdick/onedark.vim'
	use 'danilo-augusto/vim-afterglow'
	use 'arcticicestudio/nord-vim'
	use 'morhetz/gruvbox'
	use {'dracula/vim', as = 'dracula'}
	use 'tomasiser/vim-code-dark'
	-- auto pairs
	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup() end
	}
	-- lua line
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	config = function() pcall(require, 'lualine_config') end
	-- }
	-- airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	-- devicons
	use 'ryanoasis/vim-devicons'
	use 'nvim-lua/plenary.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	-- NERDTree
	use 'preservim/nerdtree'
	-- Vim Wrapper
	use 'tpope/vim-fugitive'

	if packer_bootstrap then
		require('packer').sync()
	end
end

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(plugin_setup)
