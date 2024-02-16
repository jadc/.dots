vim.g.mapleader = " "

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
}

for from, to in pairs(mappings) do
    -- Mappings are only in normal and visual block mode
    vim.keymap.set({"n", "x"}, from, to, { noremap = true, silent = true })
end
