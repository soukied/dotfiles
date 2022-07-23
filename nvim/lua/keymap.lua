local keymap = function(mode, key, map) vim.api.nvim_set_keymap(mode, key, map, {noremap=true, silent=true}) end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Toggle Tree
keymap("n", "<C-T>" , ":NERDTreeToggle<CR>")

keymap('i', '<Up>', '<Nop>')
keymap('i', '<Down>', '<Nop>')
keymap('i', '<Left>', '<Nop>')
keymap('i', '<Right>', '<Nop>')
keymap('n', '<Up>', '<Nop>')
keymap('n', '<Down>', '<Nop>')
keymap('n', '<Left>', '<Nop>')
keymap('n', '<Right>', '<Nop>')
keymap('x', '<Up>', '<Nop>')
keymap('x', '<Down>', '<Nop>')
keymap('x', '<Left>', '<Nop>')
keymap('x', '<Right>', '<Nop>')

keymap('n', '<leader>n',':bnext<CR>')
keymap('n', '<leader>p',':bprevious<CR>')
keymap('n', '<c-up>', ':resize +1<CR>')
keymap('n', '<c-down>', ':resize -1<CR>')
keymap('n', '<c-right>', ':vertical resize -1<CR>')
keymap('n', '<c-left>', ':vertical resize +1<CR>')
keymap('n', '<leader>hh', '<C-W>h')
keymap('n', '<leader>jj', '<C-W>j')
keymap('n', '<leader>kk', '<C-W>k')
keymap('n', '<leader>ll', '<C-W>l')

keymap('i','<C-J>', '<Esc>')
keymap('v','<C-J>', '<Esc>')
keymap('n','<C-J>', '<nop>')

keymap('v','<Tab>', '>gv')
keymap('v','<S-Tab>', '<gv')
keymap('v','>', '>gv')
keymap('v','<', '<gv')

-- Comment Toggle
keymap('v','<leader>/', ':\'<,\'>CommentToggle<CR>')

-- Find files using Telescope command-line sugar.
keymap('n','<C-p>', '<cmd>Telescope find_files<cr>')
keymap('n','<leader>ff', '<cmd>Telescope find_files<cr>')
keymap('n','<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap('n','<leader>fb', '<cmd>Telescope buffers<cr>')
keymap('n','<leader>fh', '<cmd>Telescope help_tags<cr>')

-- Resize windows
keymap('n', '<A-Up>', '<C-W>+')
keymap('n', '<A-Down>', '<C-W>-')
keymap('n', '<A-Right>', '<C-W>>')
keymap('n', '<A-Left>', '<C-W><')

for _, v in pairs({'i', 'v', 'x', 'c'}) do
	keymap(v, '<C-j>', '<esc>')
	keymap(v, '<C-k>', '<esc>')
end
