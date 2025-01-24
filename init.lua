require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
	if vim.v.shell_error ~= 0 then
		error('Error cloning lazy.nvim:\n' .. out)
	end
end

vim.opt.rtp:prepend(lazypath)

--require ('plugins.color_theme').setup()

require('lazy').setup({
	{ "xiyaowong/transparent.nvim" },
	{ "mg979/vim-visual-multi" },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-rhubarb" },
	{ "folke/which-key.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{
		"mfussenegger/nvim-dap",
		config = function(_, _)
		
		end
	},
	{
		"jakemason/ouroboros.nvim",
		requires = { {'nvim-lua/plenary.nvim'} }
	},

	--require 'plugins.color_theme',
	require 'plugins.neotree',
	require 'plugins.bufferline',
	require 'plugins.lualine',
	require 'plugins.treesitter',
	require 'plugins.telescope',
	require 'plugins.lsp',
	require 'plugins.autocompletion',
	require 'plugins.gitsigns',
	require 'plugins.alpha',
	require 'plugins.indent-blankline',
	require 'plugins.sessions',
	require 'plugins.cmake-tools',

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
		  { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
		  { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
		  -- See Configuration section for options
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
	{
		-- Highlight todo, notes, etc in comments
		'folke/todo-comments.nvim',
		event = 'VimEnter',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		'norcalli/nvim-colorizer.lua',
		config = function()
		  require('colorizer').setup()
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handles = {},
			ensure_installed = {
				"codelldb"
			}
		}
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
		event = "VeryLazy",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end
	},

	{
		dir = "~/.config/nvim/vassist_theme",
		lazy = false,
		priority = 1000,
		config = function()
			--require("vscode_modern").setup({
			--	cursorline = true,
				--transparent_background = false,
				--nvim_tree_darker = true,
			--})
			vim.cmd.colorscheme("vsassist")
		end
	},

})

-- color scheme
local fg = function(group, color)
	vim.cmd('hi ' .. group .. ' guifg=' .. color)
end

--fg("Function", "#ff8000")
--fg("Type", "#ffd700")
--fg("Macro", "#bd63c5")
--fg("cppStructure", "#bd63c5")
  
