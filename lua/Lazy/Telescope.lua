return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.0",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	keys = {
		{ "<leader>pf", function() require("telescope.builtin").find_files() end },
		{ "<C-p>", function() require("telescope.builtin").git_files() end },

		{ "<leader>pws", function()
			require("telescope.builtin").grep_string({
				search = vim.fn.expand("<cword>"),
			})
		end },

		{ "<leader>pWs", function()
			require("telescope.builtin").grep_string({
				search = vim.fn.expand("<cWORD>"),
			})
		end },

		{ "<leader>ps", function()
			require("telescope.builtin").grep_string({
				search = vim.fn.input("Grep > "),
			})
		end },

		{ "<leader>vpn", function()
			require("telescope.builtin").find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end },

		{ "<leader>vpp", function()
			require("telescope.builtin").find_files({
				cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
			})
		end },

		{ "<leader>vh", function()
			require("telescope.builtin").help_tags()
		end },
	},

	config = function()
		require("telescope").setup({})
	end,
}

