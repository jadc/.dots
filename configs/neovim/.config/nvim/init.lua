function mappings()
    local mappings = {
        -- Disable arrow keys
        ["<Up>"] = "<Nop>",
        ["<Down>"] = "<Nop>",
        ["<Left>"] = "<Nop>",
        ["<Right>"] = "<Nop>",

        -- Allow movement through wrapped lines
        ["j"] = "gj",
        ["k"] = "gk",
        ["$"] = "g$",
        ["0"] = "g0",

        -- Fold
        ["<Space>"] = "za"
    }

    for from, to in pairs(mappings) do
        -- Mappings are only in normal and visual block mode
        vim.keymap.set({"n", "x"}, from, to, { noremap = true, silent = true })
    end
end

function misc()
    vim.opt.number = true              -- Line numbers
    vim.opt.relativenumber = true      -- Relative line numbers
    vim.opt.ignorecase = true          -- Case insensitive search
    vim.opt.smartcase = true           -- Sensitive if search has caps
    vim.opt.hlsearch = false           -- Removes search highlight
    vim.opt.clipboard = "unnamedplus"  -- Use system clipboard
    vim.opt.termguicolors = true       -- Hex colors
end

function indent()
    vim.opt.tabstop = 4            -- Tab size
    vim.opt.softtabstop = 4        -- Cursed tab size
    vim.opt.shiftwidth = 4         -- Indent key amount
    vim.opt.expandtab = true       -- Tabs as spaces
    vim.opt.breakindent = true     -- Maintain indent when wrapping
    vim.opt.linebreak = true       -- Don't cut words while wrapping
    vim.opt.shiftround = true      -- Might not be needed
    vim.opt.copyindent = true      -- Might not be needed
    vim.opt.foldlevel = 20         -- Nested level to start folding
    vim.opt.foldmethod = "indent"  -- Fold on indents
end

-- Requires https://aur.archlinux.org/packages/nvim-lazy
function lazysetup(plugins)
    if vim.g.plugins_ready then
        return
    end

    vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
    require('lazy').setup(plugins, {})
    vim.g.plugins_ready = true
end

function plugins()
    lazysetup({
        {"olimorris/onedarkpro.nvim", priority = 1000},  -- Theme
        {"nvim-lualine/lualine.nvim"},  -- Bar
    })

    -- Options
    require('lualine').setup()
    
    --- Theme
    require("onedarkpro").setup({
        -- Saturated by 25% (except marked)
        colors = {
            bg = "#000000",      --
            fg = "#dde0e5",      --
            red = "#f3556c",
            orange = "#dc9a5b",
            yellow = "#ebc274",
            green = "#81d76b",
            cyan = "#20c3d0",
            blue = "#5daff3",
            purple = "#dc57e6",
            white = "#dde0e5",  --
            black = "#282c34",
            gray = "#5c6370",   --
            highlight = "#e2be7d",
            comment = "#7f848e",
            none = "NONE",
        }
    })
    vim.cmd("colorscheme onedark")
end

mappings()
indent()
plugins()
misc()
