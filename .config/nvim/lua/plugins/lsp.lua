local keymap = vim.keymap

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

require("mason").setup()
mason_lspconfig.setup ({
    ensure_installed = {
        -- C/C++
        "clangd",
        "ast_grep",
        "harper_ls",

        -- Rust
        "rust_analyzer",

        -- Lua
        "lua_ls",

        -- cmake
        "cmake",
        "neocmake",

        -- bash
        "bashls",
        
        -- markdown
        "grammarly",
        "ltex",
        "ltex-ls",
        "markdown_oxide",
        "marksman",
        "prosemd_lsp",
        "remark_ls",
        "vale_ls",
        "zk",

        -- OCaml
        -- "ocamllsp",
    }
})
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({})
    end,
})

-- keymap.set('n', '<leader>g', '<cmd>:lua vim.lsp.buf.definition()<Return>')
-- keymap.set('n', '<C-]>', '<cmd>:lua vim.lsp.buf.definition()<Return>')
keymap.set('n', '<leader>g', vim.lsp.buf.definition)
keymap.set('n', '<leader>s', vim.lsp.buf.references)
-- keymap.set('n', '<leader>i', vim.lsp.buf.hover)

