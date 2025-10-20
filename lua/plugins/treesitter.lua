require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "bash",
    "python",
    "cpp",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
