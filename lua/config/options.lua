-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- SCROLLOFF
-- Minimal number of screen lines to keep above and below the cursor. (999 - always in the middle)
vim.opt.scrolloff = 999

-- WORDWRAP
vim.opt.wrap = true
vim.opt.textwidth = 80
-- Word wrap at word end, not at the last character fitting the line
vim.opt.linebreak = true

-- TAB BEHAVIOUR
-- Set tab to behave as tab not spaces
vim.opt.expandtab = false
-- Put non expanded tab on Shift + Tab
vim.keymap.set("i", "<S-Tab>", "<C-V><Tab>")
-- Set tab length to x spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- 	AUTOFORMAT
vim.g.autoformat = false
