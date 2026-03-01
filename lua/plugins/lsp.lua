return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ruff" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- The New Way: Use vim.lsp.config instead of require('lspconfig')

            -- Lua setup
            vim.lsp.config("lua_ls", {})

            -- Python (Type Checking)
            vim.lsp.config("pyright", {
                settings = {
                    pyright = { disableOrganizeImports = true },
                    python = { analysis = { ignore = { '*' } } },
                },
            })

            -- Python (Ruff)
            vim.lsp.config("ruff", {
                on_attach = function(client)
                    client.server_capabilities.hoverProvider = false
                end,
            })

            -- Tell Neovim to start these servers
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("ruff")

            -- Global Keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP Hover" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
        end,
    },
}
