function setup(plugins)
    if vim.g.plugins_ready then
        return
    end

    vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
    require("lazy").setup(plugins, {})
    vim.g.plugins_ready = true
end

setup({
    {"olimorris/onedarkpro.nvim", priority = 1000},
    {"nvim-lualine/lualine.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-tree/nvim-tree.lua"},
    {"romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = false end
    },
    {"airblade/vim-gitgutter"},
})

-- Enable
require("lualine").setup()
require("plugins.config.syntax")
require("plugins.config.tree")
require("plugins.config.theme")
