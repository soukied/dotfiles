local function keymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true}) end
local function rekeymap(mode, key, map) vim.keymap.set(mode, key, map, {silent = true, remap=true}) end

vim.g.mapleader = " "

keymap({"i", "v", "n"}, "<C-J>" , "<Esc>")
keymap({"i", "v", "n"}, "<C-K>" , "<Esc>")

keymap("i", "<C-e>", "<Esc>A")
keymap("i", "<C-a>", "<Esc>I")

keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")

keymap("n", "<leader>n",":bn<cr>")
keymap("n", "<leader>p",":bp<cr>")
keymap("n", "q:","<nop>")

keymap("n", "<F2>", ":NvimTreeToggle<cr>")
keymap("n", "<leader>ff", ":Telescope find_files<cr>")

keymap("n","<leader>bq", ":bd<cr>")

rekeymap("v", "<leader>/", "<leader>c<space>")

-- Terminal Escape
rekeymap('t', '<C-j>', '<C-\\><C-n>')
rekeymap('t', '<C-k>', '<C-\\><C-n>')
rekeymap('t', '<Escape>', '<C-\\><C-n>')
