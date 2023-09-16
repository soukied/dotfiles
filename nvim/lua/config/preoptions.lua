-- Emmet configuration
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_mode = 'n'

local emmet_group = vim.api.nvim_create_augroup("emmet_group", { clear = true })

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.html',
  group = emmet_group,  -- equivalent to group=mygroup
  command = ':EmmetInstall',
})

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.tsx,*.jsx',
  group = emmet_group,  -- equivalent to group=mygroup
  command = ':EmmetInstall',
})
