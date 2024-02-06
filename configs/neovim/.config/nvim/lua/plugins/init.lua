function setup(plugins)
    if vim.g.plugins_ready then
        return
    end

    vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
    require('lazy').setup(plugins, {})
    vim.g.plugins_ready = true
end

setup({
    {"olimorris/onedarkpro.nvim", priority = 1000},
    {"nvim-lualine/lualine.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-tree/nvim-tree.lua"},
    {"nvim-telescope/telescope.nvim"}
})

-- Enable
require("lualine").setup()
require("config.nvim-treesitter")
require("config.tree")
require("config.theme")
