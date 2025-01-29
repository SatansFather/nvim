-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- swap lines up and down (normal mode)
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-up>', ':m .-2<CR>==', { noremap = true, silent = true })

-- swap lines up and down (insert mode)
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-down>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-up>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })

-- swap lines up and down (visual mode)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- multi cursor
vim.cmd([[
	let g:VM_maps = {}
	let g:VM_maps['Add Cursor Up'] = '<A-S-Up>'
	let g:VM_maps['Add Cursor Down'] = '<A-S-Down>'
]])

-- toggle header/source
vim.keymap.set('n',  '<leader>o', '<cmd> Ouroboros <CR>', { noremap = true, silent = true, desc = 'Toggle Header/Source' })

-- insert a newline below the current line
vim.keymap.set('i', '<S-CR>', '<Esc>o', { noremap = true, silent = true })

-- insert a newline above the current line
vim.keymap.set('i', '<C-CR>', '<Esc>O', { noremap = true, silent = true })

-- lazyvim rebinds these for buffer cycling, keep default for cursor placement
vim.keymap.del('n', '<S-h>')
vim.keymap.del('n', '<S-l>')

