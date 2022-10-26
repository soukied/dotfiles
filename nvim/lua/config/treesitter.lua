local loaded, ts = pcall(require, "nvim-treesitter.configs")
if not loaded then return end
ts.setup {
  highlight = {
    disable = {"html"},
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
