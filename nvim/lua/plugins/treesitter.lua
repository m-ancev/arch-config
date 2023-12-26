return {
  "nvim-treesitter/nvim-treesitter",
  build = "TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"lua", "c", "bash", "python", "css", "html", "json", "rasi", "rust", "sql", "toml", "vim", "yaml", "xml", "regex", "diff", "dockerfile"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
