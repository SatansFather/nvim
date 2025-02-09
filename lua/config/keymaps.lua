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

-- allow ctrl right/left to skip words
vim.keymap.set('n', '<C-right>', 'w', { noremap = true, silent = true })
vim.keymap.set('n', '<C-left>',  'b', { noremap = true, silent = true })

-- allow ctrl backspace in insert mode to delete words
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })

-- let ctrl up/down/j/k scoll 3 lines
vim.keymap.set({ 'n', 'v' }, '<C-Up>',   '3<C-y>', { noremap = true, silent = true })
--vim.keymap.set({ 'n', 'i', 'v' }, '<C-k>',    '3<C-e>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<C-Down>', '3<C-e>', { noremap = true, silent = true })
--vim.keymap.set({ 'n', 'i', 'v' }, '<C-j>',    '3<C-y>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-Up>', '<C-o>3<C-y>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-Down>', '<C-o>3<C-e>', { noremap = true, silent = true })

-- window resizing
vim.keymap.set('n', '<C-S-Up>',   ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-j>',    ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-k>',    ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Right>',':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-h>',    ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-l>',    ':vertical resize -2<CR>', { noremap = true, silent = true })

-- toggle header/source
vim.keymap.set('n',  '<leader>o', '<cmd> Ouroboros <CR>', { noremap = true, silent = true, desc = 'Toggle Header/Source' })

-- implement cpp functions
vim.keymap.set('n', '<leader>i', '<cmd>TSCppDefineClassFunc<CR>', { noremap = true, silent = true, desc = 'Implement C++ Functions' })

-- insert a newline below the current line
vim.keymap.set('i', '<S-CR>', '<Esc>o', { noremap = true, silent = true })

-- insert a newline above the current line
vim.keymap.set('i', '<C-CR>', '<Esc>O', { noremap = true, silent = true })

-- lazyvim rebinds these for buffer cycling, keep default for cursor placement
vim.keymap.del('n', '<S-l>')
vim.keymap.del('n', '<S-h>')

-- open mini file explorer, rebind key from LazyVim that originally opened neotree
--vim.keymap.set('n', '<leader>fe', '<cmd>lua MiniFiles.open()<CR>', { noremap = true, silent = true, desc = 'Open Mini File Explorer' })

-- cmake commands
vim.keymap.set('n', '<leader>1', '<cmd>CMakeSelectBuildType<CR>', { noremap = true, silent = true, desc = 'Select CMake Build Type' })
vim.keymap.set('n', '<leader>2', '<cmd>CMakeSelectBuildTarget<CR>', { noremap = true, silent = true, desc = 'Select CMake Build Target' })
vim.keymap.set('n', '<leader>3', '<cmd>CMakeSelectLaunchTarget<CR>', { noremap = true, silent = true, desc = 'Select CMake Launch Target' })
vim.keymap.set('n', '<leader>4', '<cmd>CMakeDebug<CR>', { noremap = true, silent = true, desc = 'Run CMake With Debugger' })
vim.keymap.set('n', '<leader>5', '<cmd>CMakeRun<CR>', { noremap = true, silent = true, desc = 'Run CMake' })
vim.keymap.set('n', '<leader>+', '<cmd>CMakeBuild<CR>', { noremap = true, silent = true, desc = 'Build CMake' })
