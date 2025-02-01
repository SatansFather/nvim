-- disable default LazyVim plugins that suck
return
{
	{ "akinsho/bufferline.nvim", enabled = false },
	{ "echasnovski/mini.pairs", enabled = false },
	{ "mfussenegger/nvim-lint", enabled = false },
	{ "stevearc/conform.nvim", enabled = false },
	{ "lukas-reineke/indent-blankline.nvim", enabled = false },

	-- disable hellish autoindent
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { indent = { enable = false } },
	},

	-- inlay hits off by default, <leader>uh to toggle
	{
		"neovim/nvim-lspconfig",
		opts =
		{
			inlay_hints = { enabled = false },
		},
	},

	-- disable tab line animation
	{
		"echasnovski/mini.indentscope",
		opts =
		{
			draw =
			{
				animation = function()
					return 0
				end,
			},
		},
	}
	--{ "Saghen/blink.cmp", enabled = false },
	--{ "rafamadriz/friendly-snippets", enabled = false },
}
