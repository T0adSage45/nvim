
return {
    "tpope/vim-fugitive",
    config = function()
        -- Keymap for Git status
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

        -- Create an augroup for Fugitive-related autocommands
        local Kirito_Fugitive = vim.api.nvim_create_augroup("Kirito_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        -- Setup autocmd for BufWinEnter, to configure keymaps when opening a Fugitive buffer
        autocmd("BufWinEnter", {
            group = Kirito_Fugitive,
            pattern = "*",
            callback = function()
                -- Only apply these keymaps for fugitive buffers
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }

                -- Keymap for pushing to Git
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git('push')
                end, opts)

                -- Keymap for pulling with rebase
                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({'pull', '--rebase'})
                end, opts)

                -- Keymap to set the upstream branch when pushing
                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
            end,
        })

        -- Keymaps for diffing
        vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")  -- Get changes from the left
        vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")  -- Get changes from the right
    end
}

