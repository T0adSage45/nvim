-- Function to apply color themes with transparent backgrounds for Normal and NormalFloat highlights
function ColorMyPencils(color)
	color = color or "rose-pine" -- Default to "rose-pine" if no color is provided
	vim.cmd.colorscheme(color)

	-- Set transparency for Normal and NormalFloat highlight groups
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- Update Lualine theme to match the selected colorscheme
	local lualine_ok, lualine = pcall(require, "lualine")
	if lualine_ok then
		lualine.setup({ options = { theme = color } })
	end
end

return {
	-- Lualine statusline plugin
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto", -- Automatically detects the current colorscheme
					section_separators = "|",
					component_separators = "|",
				},
			})
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
			ColorMyPencils()
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = false,
				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = false },
					keywords = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
			})
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})

			ColorMyPencils()
		end,
	},

	-- Kanagawa theme (dark theme inspired by Japanese art)
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		config = function()
			require("kanagawa").setup({
				transparent = true,
				theme = "dragon", -- Options: "wave", "dragon", "lotus"
			})
			-- ColorMyPencils("kanagawa")
		end,
	},

	-- Catppuccin theme (aesthetic dark theme)
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "auto",
				background = { dark = "mocha" },
				transparent_background = true,
				dim_inactive = { enabled = true, shade = "dark", percentage = 0.15 },
			})
			-- ColorMyPencils("catppuccin")
		end,
	},

	-- Everforest theme (dark forest-inspired colors)
	{
		"sainnhe/everforest",
		name = "everforest",
		config = function()
			vim.g.everforest_background = "medium" -- Options: "hard", "medium", "soft"
			vim.g.everforest_transparent_background = 1
			-- ColorMyPencils("everforest")
		end,
	},
}
