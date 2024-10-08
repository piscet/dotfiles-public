vim.cmd('packadd vim-jetpack')
require('jetpack.packer').add {
    {'tani/vim-jetpack'},

    -- colorscheme
    {'tomasr/molokai'},
    {'jacoborus/tender.vim'},

    -- lsp
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},

    -- auto complement
    {'cohama/lexima.vim'},

    -- status line
    {'nvim-tree/nvim-web-devicons'},
    {'nvim-lualine/lualine.nvim'},
}

-- automatic plugin intallation on startup
local jetpack = require('jetpack')
for _, name in ipairs(jetpack.names()) do
  if not jetpack.tap(name) then
    jetpack.sync()
    break
  end
end

