require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "lua", "javascript", "typescript", "python", "html", "css", "json", "yaml",
    "bash", "go", "rust", "java"
  },
  highlight = { enable = true },
  indent = { enable = true }
}
