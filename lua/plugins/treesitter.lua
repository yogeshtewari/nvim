return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, -- Only load when you open a file
  opts = {
    ensure_installed = { "lua", "python", "javascript", "bash", "vim", "vimdoc" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
