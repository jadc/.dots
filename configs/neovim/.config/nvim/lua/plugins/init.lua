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
    require("lazy").setup(plugins, {})
    vim.g.plugins_ready = true
end

setup({
    {"olimorris/onedarkpro.nvim", 
        priority = 1000
    },
    {"nvim-lualine/lualine.nvim"},
    {"nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = require("plugins.config.syntax")
    },
    {"nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {"nvim-tree/nvim-web-devicons"},
    {"lewis6991/gitsigns.nvim"},
    {"romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        }
    },

    -- Autocompletion and LSP
    {"VonHeikemen/lsp-zero.nvim"},
    {"neovim/nvim-lspconfig"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"saadparwaiz1/cmp_luasnip"},
    {"hrsh7th/cmp-nvim-lua"},
    {"L3MON4D3/LuaSnip"},
    {"rafamadriz/friendly-snippets"},
    {"github/copilot.vim"}
})

-- Enable
require("lualine").setup()
require("gitsigns").setup()
require("plugins.config.telescope")
require("plugins.config.theme")
require("plugins.config.lsp")
