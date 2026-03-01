return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight", -- It syncs perfectly with your theme
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true, -- High-end look: one statusline for all windows
      },
      sections = {
        lualine_x = { "encoding", "fileformat", "filetype" },
      },
    })
  end,
}
