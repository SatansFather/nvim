return {
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

