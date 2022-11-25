local loaded, ts = pcall(require, "nvim-treesitter.configs")
if not loaded then return end
ts.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
