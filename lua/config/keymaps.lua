local keymap = vim.keymap -- for conciseness

vim.g.mapleader = " "     -- Just to be safe, ensure leader is set here too

-- General Keymaps
-- File Explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Gitsigns shortcuts
local gs = package.loaded.gitsigns
if gs then
    vim.keymap.set('n', ']h', gs.next_hunk, { desc = "Next Hunk" })
    vim.keymap.set('n', '[h', gs.prev_hunk, { desc = "Prev Hunk" })
    vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc = "Preview Hunk" })
    vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end, { desc = "Blame Line" })
end
