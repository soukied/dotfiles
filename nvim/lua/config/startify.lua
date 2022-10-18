local home = os.getenv("HOME")
local version = vim.version()
local ok , db = pcall(require,'dashboard')
if (not ok) then return end

db.preview_command = "cat | lolcat -F 0.3"
db.preview_file_path = home .. '/.config/nvim/nvim.cat'
db.preview_file_height = 6
db.preview_file_width = 50
db.hide_statusline = false

db.custom_center = {
  {icon = '  ',
  desc = 'New File                                ',
  action = 'DashboardNewFile'},
  {icon = '  ',
  desc = 'Recently latest session                 ',
  action ='SessionLoad'},
  {icon = '  ',
  desc = 'Recently opened files                   ',
  action =  'DashboardFindHistory',
  },
  {icon = '  ',
  desc = 'Telescope Find Files                    ',
  action = 'Telescope find_files find_command=rg,--hidden,--files',
  },
  {icon = '  ',
  desc = 'File Browser                            ',
  action =  'Telescope file_browser',
  },
  {icon = '  ',
  desc = 'Telescope Find Word                     ',
  action = 'Telescope live_grep',
  },
  {icon = '  ',
  desc = 'Open dotfiles                           ',
  action = 'edit ~/.config/nvim/init.lua'
  },
}

db.custom_footer = {"Neovim v" .. version.major .. "." .. version.minor .. '.' .. version.patch }
