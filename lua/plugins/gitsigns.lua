return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        signs = {
            add          = { text = "┃" },
            change       = { text = "┃" },
            delete       = { text = "_" },
            topdelete    = { text = "‾" },
            changedelete = { text = "~" },
            untracked    = { text = "┆" },
        },
        current_line_blame = true, -- Shows who committed the line you're on (very modern!)
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = "eol", -- End of line
            delay = 500,
        },
    },
}
