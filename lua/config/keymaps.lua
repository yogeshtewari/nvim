vim.g.mapleader = " " -- Just to be safe, ensure leader is set here too

-- Global Quit
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit All" })
vim.keymap.set("n", "<leader>qw", ":waq<CR>", { desc = "Save and Quit All" })

-- local keymap = vim.keymap -- for conciseness

-- General Keymaps
-- File Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Gitsigns shortcuts
local gs = package.loaded.gitsigns
if gs then
    vim.keymap.set('n', ']h', gs.next_hunk, { desc = "Next Hunk" })
    vim.keymap.set('n', '[h', gs.prev_hunk, { desc = "Prev Hunk" })
    vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc = "Preview Hunk" })
    vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end, { desc = "Blame Line" })
end

-- Terminal Navigation
-- This lets you use Ctrl+hjkl to move out of the terminal window
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- Only apply these to terminal buffers
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Buffer Navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-h>", ":bprev<CR>", { desc = "Previous Buffer" })

-- Close Buffer (The "X" button)
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close Current Buffer" })
