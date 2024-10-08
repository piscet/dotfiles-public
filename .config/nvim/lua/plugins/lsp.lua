local keymap = vim.keymap

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

require("mason").setup()
mason_lspconfig.setup()
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({})
    end,
})
keymap.set('n', 'H', '<cmd>lua vim.lsp.buf.definition()<Return>')

