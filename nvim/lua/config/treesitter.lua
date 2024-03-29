local loaded, ts = pcall(require, "nvim-treesitter.configs")
if not loaded then return end
ts.setup {
  ensure_installed = {
	"c",
	"lua",
	"vim",
	"vimdoc",
	"html",
	"typescript",
	"javascript",
	"css",
	"cpp",
	"rust",
	"dart",
	"gdscript",
	"markdown",
	"markdown_inline"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
