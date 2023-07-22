local loaded, lualine = pcall(require, "lualine")
if not loaded then return end

-- Config
local config = {
	options = {
	-- Disable sections and component separators
		disabled_filetypes = {
			statusline = {"Trouble", "NvimTree"}
		},
	}
}

lualine.setup(config)
