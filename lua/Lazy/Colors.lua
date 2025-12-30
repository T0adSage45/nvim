function ColorMyPencils(color)
	color = color or "solarized-osaka"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = true,
		event = "UIEnter",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					section_separators = "|",
					component_separators = "|",
				},
			})
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		event = "UIEnter",
		priority = 1000,
		config = function ()
			require("solarized-osaka").setup({
				transparent = true,
			})

			ColorMyPencils("solarized-osaka")

		end
	},
}


