local colorscheme = 'nord'
local encoding = 'utf-8'
local options = {
	-- relative line numbers
	number = true,
	relativenumber = true,
	-- tabs
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	-- encodings
	encoding = encoding,
	fileencoding = encoding,
	-- no backup, undo, and swap file
	swapfile = false,
	undofile = false,
	backup = false,
	-- no hidden
	hidden = true,
	-- increment search
	incsearch = true,
	-- split right and below
	splitbelow = true,
	splitright = true,
	cursorline = true,
	showmode = false,
	-- termguicolors = true,
	completeopt = {"menu", "menuone", "noselect"},
	bg = "dark",
	laststatus = 3,
	guifont="FiraCode Nerd Font:h10"
}

vim.cmd("colorscheme " .. colorscheme)
vim.cmd[[
autocmd VimEnter * :NoMatchParen
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
]]

for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.g.user_emmet_leader_key = "<C-P>"

-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
			underline = true,
			-- This sets the spacing and the prefix, obviously.
			virtual_text = {
				spacing = 4,
				prefix = ''
		}
	}
)

