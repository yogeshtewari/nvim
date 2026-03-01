return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Custom header (You can put cool ASCII art here)
        dashboard.section.header.val = {
            "    ███    ██ ██    ██ ██ ███    ███",
            "    ████   ██ ██    ██ ██ ████  ████",
            "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
            "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
            "    ██   ████   ████   ██ ██      ██",
        }

        -- Set the menu buttons
        dashboard.section.buttons.val = {
            dashboard.button("f", "󰈞  Find file", [[<cmd>lua require('telescope.builtin').find_files()<CR>]]),
            dashboard.button("e", "󰙅  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("r", "󰄉  Recent files", [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]]),
            dashboard.button("s", "󰭎  Settings", ":e ~/.config/nvim/init.lua <CR>"),
            dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end,
}
