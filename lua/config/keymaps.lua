local keymap = vim.keymap -- for conciseness

-- File Explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
