local loaded, lualine = pcall(require, "lualine")
if not loaded then return end

local colors = {
	fg = "#FFFFFF",
	bg = "#0a7bcb"
}

-- Config
local config = {
	options = {
		-- Disable sections and component separators
		component_separators = '',
		section_separators = '',
		theme = {
		-- We are going to use lualine_c an lualine_x as left and
		-- right section. Both are highlighted by c theme .  So we
		-- are just setting default looks o statusline
		normal = { c = { fg = colors.fg, bg = colors.bg } },
		inactive = { c = { fg = colors.fg, bg = colors.bg } },
	},
	refresh = {
		statusline = 50
	}
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = "#FFFFFF" },
    color_warn = { fg = "#FFFFFF"  },
    color_info = { fg = "#FFFFFF" },
  },
}

ins_left {
  'branch',
  icon = ''
}

ins_left { function() return "--" end, color = { gui = "bold"}, padding ={right = 0, left = 1}}

ins_left {
	"mode",
	color = { gui = 'bold'}
}


ins_left { function() return "--" end, color = { gui = "bold"}, padding ={right = 1, left = 0}}

ins_left {
  "filename",
  file_status = true,
  path = 0
}

ins_right {
	'progress'
}

ins_right {
	'location'
}

ins_right {
	"o:filetype"
}
ins_right {
	"o:fileencoding",
	fmt = string.upper
}

lualine.setup(config)
