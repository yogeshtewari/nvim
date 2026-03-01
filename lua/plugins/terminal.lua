return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]], -- Ctrl + \ to toggle
            direction = "float", -- "horizontal", "vertical", or "float"
            float_opts = {
                border = "curved",
            },
        })
    end,
}
