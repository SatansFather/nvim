-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save with leader w
vim.keymap.del({ 'n', 'i', 'v', }, '<C-s>')
vim.keymap.set('n', '<leader>w', ':wa<CR>', { noremap = true, silent = true, desc = 'Save' })
vim.keymap.set('n', '<leader><S-w>', ':wa<CR>', { noremap = true, silent = true, desc = 'Save All' })

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

-- restore last fzf query
vim.keymap.set('n',  '<leader>r', '<cmd>FzfLua resume<CR>', { noremap = true, silent = true, desc = 'Toggle Header/Source' })

-- toggle header/source
--vim.keymap.set('n',  '<leader>o', '<cmd> Ouroboros <CR>', { noremap = true, silent = true, desc = 'Toggle Header/Source' })
vim.keymap.set('n',  '<leader>o', '<cmd>ClangdSwitchSourceHeader<CR>', { noremap = true, silent = true, desc = 'Toggle Header/Source' })

-- implement cpp functions
vim.keymap.set('n', '<leader><S-i>', '<cmd>TSCppDefineClassFunc<CR>', { noremap = true, silent = true, desc = 'Implement C++ Functions' })
vim.keymap.set('v', '<leader><S-i>', ':TSCppDefineClassFunc<CR>', { noremap = true, silent = true, desc = 'Implement C++ Functions' })
--vim.keymap.set('n', '<leader>i', '<cmd><CR>', { noremap = true, silent = true, desc = 'Implement C++ Functions' })
vim.keymap.set('n', '<leader>i', '<cmd>Generate implementations<CR>', { noremap = true, silent = true, desc = 'Implement C++ Functions' })

-- insert a newline below the current line
vim.keymap.set('i', '<S-CR>', '<Esc>o', { noremap = true, silent = true })

-- insert a newline above the current line
vim.keymap.set('i', '<C-CR>', '<Esc>O', { noremap = true, silent = true })

-- Duplicate a line and comment out the first line
vim.keymap.set("n", "yc", "yygccp")

-- lazyvim rebinds these for buffer cycling, keep default for cursor placement
vim.keymap.del('n', '<S-l>')
vim.keymap.del('n', '<S-h>')

-- shift q to record so i dont accidentally start macros all the time
vim.api.nvim_set_keymap('n', 'Q', 'q', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'q', '<Nop>', { noremap = true, silent = true })

__CMP_ENABLED = true

-- toggle cmp
vim.keymap.set('n', '<leader>um', function()
	__CMP_ENABLED = not __CMP_ENABLED
	require('cmp').setup { enabled = __CMP_ENABLED }
	vim.notify('cmp enabled: ' .. tostring(__CMP_ENABLED))
end, { noremap = true, silent = true, desc = 'Toggle cmp' })

vim.keymap.set('n', "<leader>up", "<cmd>ToggleCopilot<cr>", { desc = 'Toggle Copilot' })

-- open mini file explorer, rebind key from LazyVim that originally opened neotree
--vim.keymap.set('n', '<leader>fe', '<cmd>lua MiniFiles.open()<CR>', { noremap = true, silent = true, desc = 'Open Mini File Explorer' })

vim.keymap.set('n', '<leader>su', '<cmd>lua Snacks.picker.undo()<CR>', { noremap = true, silent = true, desc = 'view undo tree' })
-- cmake commands

-- <C-;> to go to end of line and insert semicolon
vim.keymap.set('i', '<C-;>', '<Esc>A;<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-;>', 'A;<Esc>', { noremap = true, silent = true })

_G.cmake_command = require('config/cmake_build_command')

local function get_cmake_build_command()
	local f = io.open("CMakePresets.json", "r")
	if f then
		f:close()
		vim.cmd('CMakeSelectConfigurePreset')
	else
		vim.cmd('CMakeSelectBuildType')
	end
end

vim.keymap.set('n', '<leader>1', function() get_cmake_build_command() end, { noremap = true, silent = true, desc = 'Select CMake Build Type' })
vim.keymap.set('n', '<leader>2', '<cmd>CMakeSelectBuildTarget<CR>', { noremap = true, silent = true, desc = 'Select CMake Build Target' })
vim.keymap.set('n', '<leader>3', '<cmd>CMakeSelectLaunchTarget<CR>', { noremap = true, silent = true, desc = 'Select CMake Launch Target' })
vim.keymap.set('n', '<leader>d5', '<cmd>CMakeDebug<CR>', { noremap = true, silent = true, desc = 'Run CMake With Debugger' })
vim.keymap.set('n', '<leader>5', '<cmd>CMakeRun<CR>', { noremap = true, silent = true, desc = 'Run CMake' })
vim.keymap.set('n', '<leader>8', '<cmd>CMakeBuild<CR>', { noremap = true, silent = true, desc = 'Build CMake' })
vim.keymap.set('n', '<leader>9', '<cmd>CMakeStopExecutor<CR>', { noremap = true, silent = true, desc = 'Stop CMake Executor' })
vim.keymap.set('n', '<leader>-', '<cmd>CMakeStopRunner<CR>', { noremap = true, silent = true, desc = 'Stop CMake Executor' })

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

vim.keymap.set('n', '<leader>fo',
function()
	local buf_path = vim.api.nvim_buf_get_name(0)
	local dir = vim.fn.fnamemodify(buf_path, ":h")
	vim.cmd('Oil ' .. dir)
end,
{ noremap = true, silent = true, desc = 'Open Oil File Explorer' })


vim.keymap.set("n", "<leader>dW", function()
	require('dapui').elements.watches.add(vim.fn.expand('<cword>'))
end, { silent = true, desc = "Add word under cursor to DAP watch" })

vim.keymap.set('n', '<F2>', '<cmd>CMakeOpenRunner<CR>', { remap = true, silent = true, desc = 'next ref' })
vim.keymap.set('n', '<F3>', '<cmd>CMakeOpenExecutor<CR>', { remap = true, silent = true, desc = 'next ref' })
vim.keymap.set('n', '<F4>', '<cmd>CMakeCloseExecutor<CR><cmd>CMakeCloseRunner<CR>', { remap = true, silent = true, desc = 'next ref' })
vim.keymap.set('n', '<F17>', '[[', { remap = true, silent = true, desc = 'prev ref' })
vim.keymap.set('n', '<F5>', ']]', { remap = true, silent = true, desc = 'next ref' })
vim.keymap.set('n', '<F18>', '[c', { remap = true, silent = true, desc = 'prev class' })
vim.keymap.set('n', '<F6>', ']c', { remap = true, silent = true, desc = 'next class' })
vim.keymap.set('n', '<F19>', '[f', { remap = true, silent = true, desc = 'prev func' })
vim.keymap.set('n', '<F7>', ']f', { remap = true, silent = true, desc = 'next func' })
vim.keymap.set('n', '<F11>', 'ci', { remap = true, silent = true, desc = 'change in' })
vim.keymap.set('n', '<F23>', 'ca', { remap = true, silent = true, desc = 'change in' })
vim.keymap.set('n', '<F12>', 'di', { remap = true, silent = true, desc = 'delete in' })
vim.keymap.set('n', '<F24>', 'da', { remap = true, silent = true, desc = 'delete in' })
