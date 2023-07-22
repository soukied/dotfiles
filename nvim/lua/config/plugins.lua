 local plug_opts = {
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
	'ray-x/lsp_signature.nvim',
	{'folke/neodev.nvim', config=function()
			require('neodev').setup()
	end},
	{
	 "folke/trouble.nvim",
	 opts = {
	  -- your configuration comes here
	  -- or leave it empty to use the default settings
	  -- refer to the configuration section below
	 },
	},

	-- Debugger (DAP)
	"mfussenegger/nvim-dap",
	{"rcarriga/nvim-dap-ui", config = function ()
		require("dapui").setup()
	end},
	-- Monokai,
	'sickill/vim-monokai',
	-- Goyo mode
	'junegunn/goyo.vim',
	-- Toggleterm
	{'akinsho/toggleterm.nvim', version = "*", config = function()
			require('toggleterm').setup({
				open_mapping = [[<C-\>]]
			});
	end},
	-- Vim Wiki
	'vimwiki/vimwiki',
	-- Transparent
	-- "tribela/vim-transparent"
	-- Gitsigns
	{'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end},
	-- Dashboard
	{
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		local version = vim.version()
		require('dashboard').setup {
		config = {
			week_header = {
				enable = false,
			},
			header = {
				'',
				' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
				' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
				' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
				' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
				' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
				' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
				'',
			},
			footer = {
				"",
			"Neovim v" .. version.major .. "." .. version.minor .. '.' .. version.patch }
			}
		}
	  end
	},
	-- Discord Presence
	{ 'andweeb/presence.nvim',
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
	},
	-- Dashbord / Startify
	--  {'glepnir/dashboard-nvim' }
	-- 'mhinz/vim-startify',
	-- NERD Commenter
	{'tpope/vim-commentary', config = function()
		vim.keymap.set({'v', 'n'}, "<leader>/", ":Commentary<CR>")
	end},
	-- LSPSaga
	{'glepnir/lspsaga.nvim', config = function()
		require("lspsaga").setup({})
	end},
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.0', dependencies =  {'nvim-lua/plenary.nvim'}},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function ()
			require("telescope").setup {
			  extensions = {
				file_browser = {
				  theme = "ivy",
				  -- disables netrw and use telescope-file-browser in its place
				  hijack_netrw = true,
				  mappings = {
					["i"] = {
					  -- your custom insert mode mappings
					},
					["n"] = {
					  -- your custom normal mode mappings
					},
				  },
				},
			  },
			}
			-- To get telescope-file-browser loaded and working with telescope,
			-- you need to call load_extension, somewhere after setup function:
			require("telescope").load_extension "file_browser"
		end
	},
	-- nvim tree
	{'kyazdani42/nvim-tree.lua', tag='nightly', config = function() require('nvim-tree').setup() end},
	-- NerdTree
	-- Treesitter
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	-- Devicons
	"ryanoasis/vim-devicons",
	-- VSCode Dark Theme
	'tomasiser/vim-code-dark',
	-- Everforest
	'sainnhe/everforest',
	-- Gruvbox Color
	'sainnhe/gruvbox-material',
	'morhetz/gruvbox',
	-- Solarized
	'overcache/NeoSolarized',
	-- Onedark
	'joshdick/onedark.vim',
	-- Dracula Theme
	{"dracula/vim", name = "dracula"},
	-- Catppuccin
	{"catppuccin/vim"},
	-- Polyglot
	'sheerun/vim-polyglot',
	-- Windline
	-- {'windwp/windline.nvim', config = function ()
	-- 	require('wlsample.vscode').setup()
	-- end},
	-- Lua line
	{ 'nvim-lualine/lualine.nvim',
	  dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
	  -- config = function() require('lualine').setup(); end
	},
	-- Tabline
	{'akinsho/bufferline.nvim', version='*', dependencies = {'kyazdani42/nvim-web-devicons'}, config = function() require("bufferline").setup({options={always_show_bufferline=false}}) end},
	-- Nord Theme
	{'nordtheme/vim', name='nord'}
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local loaded, lazy = pcall(require, 'lazy')
if not loaded then
	vim.notify("Packer is not installed")
	return
end

lazy.setup(plug_opts)
