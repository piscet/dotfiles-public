local opt = vim.opt

-- option
-- - basic
opt.encoding        = "utf-8"
opt.fileencodings   = "utf-8,sjis"
opt.fileformats     = "unix,dos,mac"
opt.mouse           = ""
-- vim.opt.clipboard       = "unnamed"

opt.cmdheight       = 2
opt.showcmd         = true
opt.showmode        = false

opt.tagstack        = true

-- - view
opt.number          = true
opt.title           = true
opt.wrap            = false
opt.showtabline     = 2

opt.scrolloff       = 5
opt.sidescrolloff   = 10
opt.errorbells      = false

opt.cursorline      = true
opt.cursorlineopt   = "number"

opt.display         = "lastline"
opt.syntax          = "enable"

-- - search
opt.ignorecase      = true
opt.smartcase       = true
opt.wrapscan        = true
opt.incsearch       = true
opt.hlsearch        = true

-- - tab
opt.tabstop         = 4
opt.expandtab       = true
opt.shiftwidth      = 4
opt.smartindent     = true
opt.cindent         = true

-- - window
opt.splitbelow      = true
opt.splitright      = true

-- - complement
opt.wildmenu        = true
opt.wildmode        = "full"
opt.pumheight       = 8
opt.completeopt     = "fuzzy,menuone,noinsert"

-- - jump
vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        vim.api.nvim_command "clearjump"
    end,
})
