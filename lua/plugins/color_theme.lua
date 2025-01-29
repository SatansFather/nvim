return
{
	dir = "~/.config/nvim/lua/vassist_theme",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("vsassist")
	end
}
