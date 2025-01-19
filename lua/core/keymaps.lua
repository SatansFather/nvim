-- use space as leader
vim.g.mapleader = ' '
vim.g.maplocalheader = ' '

-- disable space default keys
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set({ 'i', 'n' }, '<C-s>', '<cmd> w <CR>', opts)

-- close file
vim.keymap.set({ 'n' }, '<C-q>', '<cmd> q <CR>', opts)

-- deleting chars with x will no longer copy to clipboard
vim.keymap.set({ 'n' }, 'x', '_x', opts)

-- vertical scroll and center
vim.keymap.set({ 'n' }, '<C-d>', '<C-d>zz', opts)
vim.keymap.set({ 'n' }, '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set({ 'n' }, 'n', 'nzzzv', opts)
vim.keymap.set({ 'n' }, 'N', 'Nzzzv', opts)

-- buffer navigation
vim.keymap.set( { 'n' }, '<Tab>', ':bnext<CR>', opts)          -- next file
vim.keymap.set( { 'n' }, '<S-Tab>', ':bprevious<CR>', opts)    -- prev file
vim.keymap.set( { 'n' }, '<leader>x', ':Bdelete!<CR>', opts)   -- close file
vim.keymap.set( { 'n' }, '<leader>b', '<cmd> enew <CR>', opts) -- new file

-- window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

