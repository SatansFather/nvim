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
	{ "echasnovski/mini.indentscope", enabled = false },
	--{ "Saghen/blink.cmp", enabled = false },
	--{ "rafamadriz/friendly-snippets", enabled = false },

	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },

	{ "Saghen/blink.cmp", enabled = false },
	{ "garymjr/nvim-snippets", enabled = false },
	{ "rafamadriz/friendly-snippets", enabled = false },
}
