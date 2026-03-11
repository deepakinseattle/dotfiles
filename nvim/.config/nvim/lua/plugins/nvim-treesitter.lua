return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    indent = { enable = true },
    highlight = { enable = true },
    ensure_installed = {
      "bash",
      "diff",
      "html",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "ruby",
      "xml",
      "yaml"
    }
  }
}
