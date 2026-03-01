return {
    "petertriho/nvim-scrollbar",
    config = function()
        local colors = require("tokyonight.colors").setup()
        require("scrollbar").setup({
            handle = {
                color = colors.bg_highlight,
            },
            marks = {
                Search = { color = colors.orange },
                Error = { color = colors.error },
                Warn = { color = colors.warning },
                Info = { color = colors.info },
                Hint = { color = colors.hint },
                GitAdd = { color = colors.git.add },
                GitChange = { color = colors.git.change },
                GitDelete = { color = colors.git.delete },
            },
            excluded_filetypes = {
                "cmp_menu",
                "cmp_docs",
                "nwim-tree",
                "alpha",
            },
        })
    end,
}
