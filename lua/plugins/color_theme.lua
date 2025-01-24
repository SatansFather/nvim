local themes = {
	{
		"BoHomola/vsassist.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--require("vscode_modern").setup({
			--		cursorline = true,
			--		transparent_background = false,
			--		nvim_tree_darker = true,
			--})
			vim.cmd.colorscheme("vsassist")
		end
	},
	{
		"gmr458/vscode_modern_theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
				require("vscode_modern").setup({
				cursorline = true,
				transparent_background = false,
				nvim_tree_darker = true,
			})
			vim.cmd.colorscheme("vscode_modern")
		end
	},
	{
		"decaycs/decay.nvim",
		name = "decay",
		lazy = false,
		priority = 1000,
		config = function ()
			vim.cmd.colorscheme "decay-dark"
			--vim.cmd.colorscheme "decay-light"
			--vim.cmd.colorscheme "decay-default"
			--vim.cmd.colorscheme "decayce"
		end
	}
}

return themes[2]

