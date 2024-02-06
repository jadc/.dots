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

indent()
misc()
