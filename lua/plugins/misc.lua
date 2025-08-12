return
{
    --{ "xiyaowong/transparent.nvim" }, -- allow background transparency
	{ "jakemason/ouroboros.nvim" },   -- toggle header/source
	--{ "mg979/vim-visual-multi" },     -- vs style multi cursor
	{ "petertriho/nvim-scrollbar" },
	{ "kevinhwang91/nvim-hlslens" },
	--{ "Civitasv/cmake-tools.nvim" },

	{
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
			local cmp = require("cmp")
			opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
				["<CR>"] = cmp.config.disable,
				["<C-s>"] = LazyVim.cmp.confirm({ select = true }),
			})
		end,
	},

	{
		'eriks47/generate.nvim',
		dependencies = { 'nvim-treesitter/nvim-treesitter' }
	},

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
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},

	--{
	--	-- Calls `require('slimline').setup({})`
	--	"sschleemilch/slimline.nvim",
	--	opts = {}
	--}
}
