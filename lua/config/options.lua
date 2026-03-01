-- Add your basic editor settings here (indentation, line numbers, etc.).

vim.g.mapleader = " " -- Set space as your leader key

local opt = vim.opt
opt.number = true           -- Show line numbers
opt.relativenumber = true   -- Relative line numbers for jumping
opt.shiftwidth = 4          -- Size of an indent
opt.tabstop = 4             -- Number of spaces tabs count for
opt.expandtab = true        -- Use spaces instead of tabs
opt.termguicolors = true    -- True color support (needed for modern themes)
opt.cursorline = true       -- Highlight the current line

