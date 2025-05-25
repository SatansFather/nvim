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
			}
		}
	},
}
