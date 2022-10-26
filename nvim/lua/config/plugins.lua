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
	-- Discord Presence
	use {
	'andweeb/presence.nvim',
	config = function()
		require("presence"):setup({
			auto_update         = true,
			neovim_image_text   = "The One True Text Editor",
			main_image          = "neovim",
			client_id           = "793271441293967371",
			log_level           = nil,
			debounce_timeout    = 10,
			enable_line_number  = false,
			blacklist           = {},
			buttons             = true,
			file_assets         = {},
			editing_text        = "Editing %s",
			file_explorer_text  = "Browsing %s",
			git_commit_text     = "Committing changes",
			plugin_manager_text = "Managing plugins",
			reading_text        = "Reading %s",
			workspace_text      = "Working on %s",
			line_number_text    = "Line %s out of %s",
		})
	end
	}
	-- Dashbord
	use  {'glepnir/dashboard-nvim'
	}
	-- NERD Commenter
	use 'preservim/nerdcommenter'
	-- LSPSaga
	use 'glepnir/lspsaga.nvim'
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- nvim tree
	use {'kyazdani42/nvim-tree.lua', tag='nightly', config = function() require('nvim-tree').setup() end}
	-- NerdTree
	-- use 'preservim/nerdtree'
	-- Auto pairs
	use {'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end}
	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	-- Devicons
	use "ryanoasis/vim-devicons"
	-- Emmet
	use 'mattn/emmet-vim'
	-- VSCode Dark Theme
	use 'tomasiser/vim-code-dark'
	-- Everforest
	use 'sainnhe/everforest'
	-- Gruvbox Color
	use 'sainnhe/gruvbox-material'
	use 'morhetz/gruvbox'
	-- Solarized
	use 'overcache/NeoSolarized'
	-- Onedark
	use 'joshdick/onedark.vim'
	-- Dracula Theme
	use {"dracula/vim", as = "dracula"}
	-- Catppuccin
	use {"catppuccin/vim"}
	-- Polyglot
	use 'sheerun/vim-polyglot'
	-- Lua line
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = function() require('lualine').setup(); end
	}
	-- Tabline
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons', config = function() require("bufferline").setup({options={always_show_bufferline=false}}) end}
	-- Nord Theme
	use 'arcticicestudio/nord-vim'
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
