return {
  "folke/tokyonight.nvim",
  lazy = false, -- Load this immediately
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}
