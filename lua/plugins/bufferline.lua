return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers", -- "tabs" for standard tabs, "buffers" for open files
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left",
                        separator = true,
                    }
                },
                separator_style = "slant", -- Looks very modern
                diagnostics = "nvim_lsp", -- Shows Ruff/Pyright errors in the tab bar
            },
        })
    end,
}
