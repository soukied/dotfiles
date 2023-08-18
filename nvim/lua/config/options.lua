local tabs = 4
local options = {
	showmode = false,
	softtabstop =tabs,
	tabstop=tabs,
	shiftwidth=tabs,
	autoindent=true,
	smartindent=true,
	number=true,
	relativenumber=true,
	backup = false,
	swapfile = false,
	laststatus=2,
	splitbelow = true,
	splitright = true,
	hidden = true,
	termguicolors = true,
	background = 'dark',
	cursorline = true,
	mouse = 'a',
	guifont = "FiraCode Nerd Font:h9",
	wildoptions = vim.opt.wildoptions - 'pum'
}

local html = vim.api.nvim_create_augroup("html_tab", {clear=true})
vim.api.nvim_create_autocmd("BufEnter", {
	group = html,
	pattern = {"*.html"},
	command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2"
})

vim.cmd[[
	set guioptions-=e " Use showtabline in gui vim
	set sessionoptions+=tabpages,globals " store tabpages and globals in session
	let NERDTreeShowHidden=1
]]

vim.cmd [[
	colorscheme catppuccin_macchiato
]]

for k, v in pairs(options) do
	vim.opt[k] = v
end

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


vim.cmd [[

map <silent> <F1> <Nop>
imap <silent> <F1> <Nop>

augroup gdscript_filetype
	au!
	au BufNewFile,BufRead *.gd set ft=gdscript
au END

]]

vim.g.mapleader = "<Space>"

vim.g.floaterm_keymap_new    = '<F7>'
vim.g.floaterm_keymap_prev   = '<F8>'
vim.g.floaterm_keymap_next   = '<F9>'
vim.g.floaterm_keymap_toggle = '<F12>'
vim.g.floaterm_keymap_kill = '<C-q>'
