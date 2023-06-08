local import = require 'module_loader'

import 'config.plugins'
import 'config.options'
import 'config.keymaps'
import 'config.treesitter'
import 'config.lsp_config'
import 'config.lualine'
import 'config.startify'
import 'config.lspsaga'

vim.g.user_emmet_leader_key = "<C-Z>"
