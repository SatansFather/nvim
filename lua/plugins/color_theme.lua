local theme = 0
local out = {}

if theme == 0 then
	out =
	{
		dir = "~/.config/nvim/lua/vassist_theme",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("vsassist")
		end
	}
elseif  theme == 1 then
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
elseif theme == 2 then
	out =
	{
		"rebelot/kanagawa.nvim",
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
elseif theme == 3 then
	out =
	{
		"talha-akram/noctis.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("noctis")
		end
	}
end

return out
