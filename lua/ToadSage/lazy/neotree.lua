return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "echasnovski/mini.icons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window
    },
    config = function()
        require("neo-tree").setup({
            default_component_configs = {
                position = "right",
            },
            source_selector = {
                winbar = true, -- toggle to show selector on winbar
                statusline = false, -- toggle to show selector on statusline
                show_scrolled_off_parent_node = false, -- boolean
                sources = { -- table
                    {
                        source = "filesystem", -- string
                        display_name = " 󰉓 Files ", -- string | nil
                    },
                    {
                        source = "buffers", -- string
                        display_name = " 󰈚 Buffers ", -- string | nil
                    },
                    {
                        source = "git_status", -- string
                        display_name = " 󰊢 Git ", -- string | nil
                    },
                },
                content_layout = "start", -- string
            },
        })
        -- Set keymap for toggling Neo-Tree
        vim.keymap.set("n", "<C-b>", ":Neotree toggle reveal filesystem right show focus  <CR>", {})
    end,
} --- use <C-b> then ?.
