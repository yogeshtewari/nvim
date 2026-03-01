return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "moon", -- or "dark", "storm"
            on_highlights = function(hl, c)
                -- This is where we define the word highlight colors
                -- bg = background color, fg = text color (optional)

                local highlight_color = "#780000" -- Dark Red background

                hl.LspReferenceText = { bg = highlight_color }
                hl.LspReferenceRead = { bg = highlight_color }
                hl.LspReferenceWrite = { bg = highlight_color }

                -- Also, let's make sure your Slim Columns stay subtle here too
                hl.VirtColumn = { fg = c.bg_highlight, bg = "none" }
            end,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}
