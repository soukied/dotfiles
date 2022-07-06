local keymap = function(mode, key, map) vim.api.nvim_set_keymap(mode, key, map, {noremap=true, silent=true}) end

keymap("n", "<C-T>" , ":NERDTreeToggle<CR>")
