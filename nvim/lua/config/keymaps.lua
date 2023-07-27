local function keymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true}) end
local function rekeymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true, remap=true}) end

vim.g.mapleader = " "

if vim.g.neovide then
	  keymap("n", "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
	  keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
	  keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end

keymap({"i", "v", "n"}, "<C-J>" , "<Esc>")
keymap({"i", "v", "n"}, "<C-K>" , "<Esc>")

keymap("i", "<C-e>", "<Esc>A")
keymap("i", "<C-a>", "<Esc>I")

keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

keymap("n", "<esc>", ":noh<cr>")

-- Windowing
keymap("n", "<leader>ws", ":split<cr>")
keymap("n", "<leader>wv", ":vsplit<cr>")
keymap("n", "<leader>wh", "<C-W>h")
keymap("n", "<leader>wj", "<C-W>j")
keymap("n", "<leader>wk", "<C-W>k")
keymap("n", "<leader>wl", "<C-W>l")


keymap("n", "<leader>n",":bn<cr>")
keymap("n", "<leader>p",":bp<cr>")
keymap("n", "q:","<nop>")

keymap("n", "<F2>", ":NvimTreeToggle<cr>")
keymap("n", "<leader>ff", ":Telescope find_files hidden=true<cr>")
keymap("n", "<leader>fb", ":Telescope file_browser hidden=true<cr>")

keymap("v", "<leader>/", ":Commentary<cr>")
keymap("n", "/", "<c-l>/")

keymap("n","<leader>bq", ":bd<cr>")

-- Terminal Escape
rekeymap('t', '<C-j>', '<C-\\><C-n>')
rekeymap('t', '<C-k>', '<C-\\><C-n>')
rekeymap('t', '<Escape>', '<C-\\><C-n>')
