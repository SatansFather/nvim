return

{
    --{ "xiyaowong/transparent.nvim" }, -- allow background transparency
	-- { "jakemason/ouroboros.nvim" },   -- toggle header/source
	--{ "mg979/vim-visual-multi" },     -- vs style multi cursor
	--{ "petertriho/nvim-scrollbar" },
	{ "kevinhwang91/nvim-hlslens" },
	--{ "Civitasv/cmake-tools.nvim" },

	{
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
			local cmp = require("cmp")
			opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
				["<CR>"] = cmp.config.disable,
				["<C-k>"] = LazyVim.cmp.confirm({ select = true }),
			})
		end,
	},

	--{
	--	'eriks47/generate.nvim',
	--	dependencies = { 'nvim-treesitter/nvim-treesitter' }
	--},
	--{
	--	"SunnyTamang/select-undo.nvim",
	--	opts = {},
	--},
	{
		"folke/snacks.nvim",
		opts =
		{
			scroll =
			{
				enabled = false
				--duration = 1000,
			},
			animate =
			{
				enabled = false,
				fps = 144
			},
			indent =
			{
				--enabled = false
			}
		}
	},

	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},

	{
		'nvim-lualine/lualine.nvim',
		opts =
		{
			sections =
			{
				lualine_b = {}
			}
		}
	},

	{
		'ibhagwan/fzf-lua',
		enabled = false,
		winopts =
		{
			fullscreen = true,
		},
		keys =
		{
      		{ "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{ "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      		{ "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{ "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
			{ "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
		},
	},

	{
		"folke/snacks.nvim",
		opts =
		{
			picker =
			{
				enabled = true,
				sources =
				{
					files =
					{
						finder = "files",
						format = "file",
						show_empty = true,
						supports_live = true,
						-- Add the -L flag to fd
						args = { "--follow", "--hidden", "--exclude", ".git" },
					},
					grep =
					{
						args = { "--follow", "--hidden", "--fixed-strings", "--glob", "!.git/*" },
					},
				},
       		},
		},
		keys =
		{
			{ "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{ "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
			{ "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{ "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
			{ "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
		},
	},

	{
		"zbirenbaum/copilot.lua",
		suggestion = { enabled = true }
	},
    {
        "igorlfs/nvim-dap-view",
        ---@module 'dap-view'
        ---@type dapview.Config
        opts = {},
    },
	{
		"gbprod/yanky.nvim",
		opts = { },
		dependencies = { "folke/snacks.nvim" },
		keys = {
			{
			"<leader>p",
			function()
				Snacks.picker.yanky()
			end,
			mode = { "n", "x" },
			desc = "Open Yank History",
			},
		}
	},

	--{
	--	-- Calls `require('slimline').setup({})`
	--	"sschleemilch/slimline.nvim",
	--	opts = {}
	--}
	{
		"folke/snacks.nvim",
		opts =
		{
			picker = {
			sources = {
				lsp_symbols = {
				filter = {
					c = {
					-- "Class", lsp treats typedefs and forwards as classes and i dont want to search those
					"Constructor",
					"Enum",
					"Field",
					"Function",
					"Interface",
					"Method",
					"Module",
					"Namespace",
					"Package",
					"Property",
					"Struct",
					"Trait",
					},
					markdown = true,
					help = true,
				},
				},
			},
			},
		},
	}
}
