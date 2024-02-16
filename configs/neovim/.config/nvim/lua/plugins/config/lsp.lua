local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.cmd.amenu([[PopUp.Info <Cmd>lua vim.lsp.buf.hover()<CR>]])
    vim.cmd.amenu([[PopUp.Definition <Cmd>lua vim.lsp.buf.definition()<CR>]])
    vim.cmd.amenu([[PopUp.Usages <Cmd>lua vim.lsp.buf.references()<CR>]])
    vim.cmd.amenu([[PopUp.Refactor <Cmd>lua vim.lsp.buf.rename()<CR>]])
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {"tsserver", "rust_analyzer", "pyright", "clangd"},
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require("lspconfig").lua_ls.setup(lua_opts)
        end,
    }
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    window = {
        completion = {
            border = "rounded",
            winhighlight = "Normal:CmpNormal",
        },
        documentation = {
            winhighlight = "Normal:CmpDocNormal",
        }
    },
    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "luasnip", keyword_length = 2 },
        { name = "buffer", keyword_length = 3 },
    },
    formatting = lsp_zero.cmp_format(),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-Return>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
})
