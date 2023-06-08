local tabs = 4
local options = {
	softtabstop =tabs,
	tabstop=tabs,
	shiftwidth=tabs,
	autoindent=true,
	smartindent=true,
	number=true,
	relativenumber=true,
	backup = false,
	swapfile = false,
	laststatus=3,
	showmode=false,
	splitbelow = true,
	splitright = true,
	hidden = true,
	termguicolors = true,
	background = 'dark',
	cursorline = true,
	mouse = 'a',
	guifont = "FiraCode Nerd Font:h9"
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
	autocmd TermOpen * setlocal nonu nornu nocursorline
]]
vim.g.user_emmet_leader_key = '<C-P>'

vim.cmd [[
colorscheme codedark
]]

local ap_loaded, ap = pcall(require,"nvim-autopairs")
if ap_loaded then ap.setup() end

for k, v in pairs(options) do
	vim.opt[k] = v
end

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.user_emmet_install_global = 0
vim.cmd [[
augroup normal_rnu
	autocmd!
	autocmd InsertEnter * setlocal nornu
	autocmd InsertLeave * setlocal rnu
augroup END

augroup emmet_filetype
	au!
	au FileType html,css,tsx,jsx EmmetInstall
augroup END

augroup tscopeprompt_setting
	au!
	au FileType TelescopePrompt setlocal nonu nornu
augroup END
]]

vim.g.floaterm_keymap_new    = '<F7>'
vim.g.floaterm_keymap_prev   = '<F8>'
vim.g.floaterm_keymap_next   = '<F9>'
vim.g.floaterm_keymap_toggle = '<F12>'
vim.g.floaterm_keymap_kill = '<C-q>'
