-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<leader>cp', ':let @+ = expand("%:p")<CR>', { desc = "Copy current file path" })
vim.keymap.set('n', '<leader>od', ":Oil %:p:h<CR>", { desc = "Open directory" })

-- Terminal. We only set h for now because aider always open on the right
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])
vim.keymap.set('t', '<C-n>', [[<C-\><C-n>]])
vim.keymap.set('n', '<leader>ot', ':botright split | resize 10 | terminal<CR>', { noremap = true, silent = true })
