-- Set the path to where lazy.nvim will be installed or already exists
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed, if not, clone it from the GitHub repository
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone",
        "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- Clone the latest stable release
        lazypath, })
end

-- Prepend the lazy.nvim directory to the runtime path
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with Kirito's custom lazy initialization spec and disable change detection notifications
require("lazy").setup({
    spec = "Kirito.lazy",
    change_detection = { notify = true },
})
