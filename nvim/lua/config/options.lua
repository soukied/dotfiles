local options = {
	softtabstop = 4,
	tabstop=4,
	shiftwidth=4,
	autoindent=true,
	smartindent=true,
	cursorline=true,
	number=true,
	relativenumber=true,
	backup = false,
	swapfile = false,
	laststatus=3,
	showmode=false,
	splitbelow = true,
	splitright = true,
	hidden = true,
	termguicolors = true
}

vim.cmd[[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]

vim.g.user_emmet_leader_key = '<C-P>'

vim.cmd "colorscheme nord"

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

vim.cmd [[
autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu
]]
