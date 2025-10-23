local local_plugins = {

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			-- Initialize harpoon
			harpoon:setup()

			-- Keymaps to add current file to harpoon
			vim.keymap.set("n", "<leader>A", function()
				harpoon:list():prepend()
			end, { desc = "Harpoon: Prepend current file" })

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end, { desc = "Harpoon: Add current file" })

			-- Toggle the harpoon quick menu
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Harpoon: Toggle quick menu" })

			-- Keymaps to select specific harpoon files
			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end, { desc = "Harpoon: Select slot 1" })

			vim.keymap.set("n", "<C-t>", function()
				harpoon:list():select(2)
			end, { desc = "Harpoon: Select slot 2" })

			vim.keymap.set("n", "<C-n>", function()
				harpoon:list():select(3)
			end, { desc = "Harpoon: Select slot 3" })

			vim.keymap.set("n", "<C-s>", function()
				harpoon:list():select(4)
			end, { desc = "Harpoon: Select slot 4" })

			-- Keymaps to replace files in harpoon list
			vim.keymap.set("n", "<leader><C-h>", function()
				harpoon:list():replace_at(1)
			end, { desc = "Harpoon: Replace slot 1" })

			vim.keymap.set("n", "<leader><C-t>", function()
				harpoon:list():replace_at(2)
			end, { desc = "Harpoon: Replace slot 2" })

			vim.keymap.set("n", "<leader><C-n>", function()
				harpoon:list():replace_at(3)
			end, { desc = "Harpoon: Replace slot 3" })

			vim.keymap.set("n", "<leader><C-s>", function()
				harpoon:list():replace_at(4)
			end, { desc = "Harpoon: Replace slot 4" })
		end,
	},
}

-- ============================================================
-- 💤 Optional / Experimental Plugins (commented out)
-- ============================================================

-- local disabled_plugins = {

-- 	-- 🗂️ Oil.nvim (File Explorer)
-- 	{
-- 		"stevearc/oil.nvim",
-- 		enabled = false,
-- 		---@module 'oil'
-- 		---@type oil.SetupOpts
-- 		opts = {},
-- 		dependencies = {
-- 			{ "echasnovski/mini.icons", opts = {} },
-- 		},
-- 	},

-- {
-- 	"ThePrimeagen/vim-apm",
-- 	config = function() end,
-- },
--
-- {
-- 	"ThePrimeagen/vim-with-me",
-- 	config = function() end,
-- },
--

-- 	-- ✨ Smear Cursor (smooth cursor trail effect)
-- 	{
-- 		"sphamba/smear-cursor.nvim",
-- 		opts = {
-- 			smear_between_buffers = true,
-- 			smear_between_neighbor_lines = true,
-- 			scroll_buffer_space = true,
-- 			legacy_computing_symbols_support = false,
-- 			smear_insert_mode = true,
-- 		},
-- 	},
-- }

return local_plugins
