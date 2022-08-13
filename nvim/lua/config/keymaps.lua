local function keymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true}) end
local function rekeymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true, remap=true}) end

vim.g.mapleader = " "

keymap({"i", "v"}, "<C-J>" , "<Esc>")
keymap({"i", "v"}, "<C-K>" , "<Esc>")

keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

keymap("n", "<leader>n",":bn<cr>")
keymap("n", "<leader>p",":bp<cr>")

keymap("n", "<C-T>", ":NvimTreeToggle<cr>")
keymap("n", "<leader>ff", ":Telescope find_files<cr>")
rekeymap("v", "<leader>/", "<leader>c<space>")
