-- vim.cmd [[packadd packer.nvim]]

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	-- LSP support
	use 'neovim/nvim-lspconfig'
	-- Tree-sitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
	-- themes
	use 'morhetz/gruvbox'
	use {'dracula/vim', as = 'dracula'}
	use 'tomasiser/vim-code-dark'
	-- auto pairs
	use 'cohama/lexima.vim'
	-- airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	-- devicons
	use 'ryanoasis/vim-devicons'
	-- NERDTreeo
	use 'preservim/nerdtree'
end)
