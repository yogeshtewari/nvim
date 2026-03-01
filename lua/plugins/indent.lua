return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = "▏", -- A subtle thin line
            tab_char = "▏",
        },
        scope = {
            enabled = true,
            show_start = false, -- Keeps it clean
            show_end = false,
        },
        exclude = {
            filetypes = {
                "help",
                "alpha",
                "dashboard",
                "nvim-tree",
                "Lazy",
                "mason",
                "toggleterm",
            },
        },
    },
}
