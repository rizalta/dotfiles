-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
for _, mode in ipairs({ "n", "i", "v" }) do
	vim.keymap.set(mode, "<Up>", "<Nop>", { noremap = true, silent = true })
	vim.keymap.set(mode, "<Down>", "<Nop>", { noremap = true, silent = true })
	vim.keymap.set(mode, "<Left>", "<Nop>", { noremap = true, silent = true })
	vim.keymap.set(mode, "<Right>", "<Nop>", { noremap = true, silent = true })
end
