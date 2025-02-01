-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options before

vim.wo.number         = true               -- show line numbers
vim.o.clipboard       = 'unnamedplus'      -- use os clipboard
vim.o.wrap            = false              -- do not wrap
vim.o.linebreak       = false              -- do not wrap
vim.o.mouse           = 'a'                -- allow mouse
vim.o.autoindent      = true               -- keep line indentation on new line
vim.o.indentexpr      = ''                 -- dont be fucked up
vim.o.relativenumber  = false              -- show absolute line number
vim.o.ignorecase      = true               -- case insensitive search
vim.o.smartcase       = false              -- respect captical case in search
vim.o.shiftwidth      = 4                  -- tab width
vim.o.tabstop         = 4                  -- tab width
vim.o.softtabstop     = 0                  -- DO NOT convert tabs to spaces
vim.o.expandtab       = false              -- DO NOT convert tabs to spaces
vim.o.scrolloff       = 4                  -- number of lines to pad on screen above/below cursor
vim.o.sidescrolloff   = 8                  -- number of chars to pad left/right of cursor when wrapping is off
vim.o.cursorline      = true               -- highlight the selected line
vim.o.splitbelow      = true               -- force all horizontal splits to go below current window
vim.o.splitright      = true               -- force all vertical splits to go to the right of current window
vim.o.hlsearch        = true               -- highlight text that matches search
vim.o.showmode        = false              -- show current mode (insert, visual, etc)
vim.opt.termguicolors = true               -- set termguicolors to enable highlight groups
vim.o.whichwrap       = 'bs<>[]hl'         -- which "horizontal" keys are allowed to travel to prev/next line
vim.o.numberwidth     = 4                  -- width of the line number column
vim.o.swapfile        = false              -- use swapfile
vim.o.smartindent     = false               -- piss all over my code FOR me
vim.o.showtabline     = 1                  -- 0 - no tab lines, 1 on if more than 2 tabs, 2 - always show
vim.o.backspace       = 'indent,eol,start' -- allow backspace on
vim.o.pumheight       = 10                 -- pop up menu height
vim.o.conceallevel    = 0                  -- so that `` is visible in markdown files
vim.wo.signcolumn     = 'yes'              -- keep signcolumn on by default
vim.o.fileencoding    = 'utf-8'            -- the encoding written to a file
vim.o.cmdheight       = 1                  -- space in the Neovim command line for displaying messages
vim.o.breakindent     = true                -- allow new lines to inherit indentation from previous line
vim.o.updatetime      = 250                -- 
vim.o.timeoutlen      = 300                -- how long to wait for multi key maps to complete before cancelling the chord
vim.o.backup          = false              -- create a backup file when saving
vim.o.writebackup     = false              -- prevent saving files open in other programs
vim.o.undofile        = true               -- save undo history
vim.o.completeopt     = 'menuone,noselect' -- set completeopt to have a better completion experience
vim.o.list = false

-- disable autoformat on save
vim.g.autoformat = false

