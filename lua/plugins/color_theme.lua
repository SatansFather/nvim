local out_theme = 2
local out = {}

if out_theme == 0 then
	out =
	{
		dir = "~/.config/nvim/lua/vassist_theme",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("vsassist")
		end
	}
elseif  out_theme == 1 then
	out =
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("black-metal").setup({
				theme = "bathory",
				variant = "dark"
			})
			require("black-metal").load()
		end
	}
elseif out_theme == 2 then
	out =
	{
		dir = "~/.config/nvim/lua/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		confifg = function()
			require('kanagawa').setup(
			{
				compile = false,             -- enable compiling the colorscheme
				undercurl = true,            -- enable undercurls
				commentStyle = { italic = false },
				functionStyle = {},
				keywordStyle = { italic = false},
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false,         -- do not set background color
				dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
				terminalColors = true,       -- define vim.g.terminal_color_{0,17}
				colors = {                   -- add/modify theme and palette colors
					palette = {},
					theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
				},
				overrides = function(colors) -- add/modify highlights
					return {}
				end,
				theme = "wave",              -- Load "wave" theme
				background = {               -- map the value of 'background' option to a theme
					dark = "wave",           -- try "dragon" !
					light = "lotus"
				},
			})
		end,

		opts = {
			colorscheme = "kanagawa",
		},
	}
elseif out_theme == 3 then
	out =
	{
		"talha-akram/noctis.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("noctis")
		end
	}
elseif out_theme == 4 then
	out =
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					styles = {
						comments = "italic",
						functions = "bold",
						keywords = "bold,italic",
						variables = "bold",
					},
				},
			})
			vim.cmd.colorscheme("nightfox")
		end
	}
elseif out_theme == 5 then
	out =
	{
		"oskarnurm/koda.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- require("koda").setup({ transparent = true })
			vim.cmd("colorscheme koda")
		end,
	}
elseif out_theme == 6 then
	out = { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, config = function()

		vim.cmd.colorscheme("gruvbox")
	end }
end


return out
