local colorscheme = 'codedark'
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
	hidden = false,
	-- increment search
	incsearch = true,
	-- split right and below
	splitbelow = true,
	splitright = true,
	cursorline = true,
	showmode = false,
	completeopt = {"menu", "menuone", "noselect"},
	bg = "dark",
	laststatus = 3,
}

local cmd = vim.cmd
cmd [[autocmd VimEnter * :NoMatchParen]] -- No matching parentheses hightlight
cmd ("colorscheme " .. colorscheme)

for k,v in pairs(options) do
	vim.opt[k] = v
end
