local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	-- LSP support
	use 'neovim/nvim-lspconfig'
	use {
		'kkharji/lspsaga.nvim',
		branch = 'main',
		config = function()
			local saga_loaded, saga = pcall(require,"lspsaga")
			if saga_loaded then
				saga.init_lsp_saga()
			end
		end
	}
	-- Completion LSP
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- Tree-sitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
	-- themes
	use 'joshdick/onedark.vim'
	use 'arcticicestudio/nord-vim'
	use 'morhetz/gruvbox'
	use {'dracula/vim', as = 'dracula'}
	use 'tomasiser/vim-code-dark'
	-- auto pairs
	use 'cohama/lexima.vim'
	-- lua line
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	config = function() pcall(require, 'lualine_config') end
	-- }
	-- airline
	use 'vim-airline/vim-airline'
	use {'vim-airline/vim-airline-themes', config = function() vim.cmd[[:AirlineTheme onedark ]] end}
	-- devicons
	use 'ryanoasis/vim-devicons'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	-- NERDTree
	use 'preservim/nerdtree'
	-- use {
	-- 	'kyazdani42/nvim-tree.lua',
	-- 	config = function ()
	-- 		local loaded,tree = pcall(require,'nvim-tree')
	-- 		if loaded then tree.setup() end
	-- 	end
	-- }
	-- Vim Wrapper
	use 'tpope/vim-fugitive'
end)
