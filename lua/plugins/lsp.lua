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

            --- NEW: SMART WORD HIGHLIGHTING ---
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    -- Only enable if the server supports it (Pyright and Lua_ls do)
                    if client and client.server_capabilities.documentHighlightProvider then
                        vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                            buffer = args.buf,
                            callback = vim.lsp.buf.document_highlight,
                        })

                        vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
                            buffer = args.buf,
                            callback = vim.lsp.buf.clear_references,
                        })
                    end
                end,
            })


            -- Global Keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP Hover" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
        end,
    },
}
