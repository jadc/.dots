function setup(plugins)
    if vim.g.plugins_ready then
        return
    end

    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
    end

    vim.opt.rtp:prepend(lazypath)
    require('lazy').setup(plugins, {})
    vim.g.plugins_ready = true
end

setup({
    {"olimorris/onedarkpro.nvim", priority = 1000},
    {"nvim-lualine/lualine.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-tree/nvim-tree.lua"},
    --[[{"romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = false end
    },--]]
    {"airblade/vim-gitgutter"},
})

-- Enable
require("lualine").setup()
require("plugins.config.syntax")
require("plugins.config.tree")
require("plugins.config.theme")
