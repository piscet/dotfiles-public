local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local fzf = require("fzf-lua")
local actions = fzf.actions
local config = fzf.config

local function my_file_open(selected, opts)
    local buf  = vim.api.nvim_get_current_buf()
    local file_name = vim.api.nvim_buf_get_name(buf)

    if file_name ~= "" then
        actions.file_tabedit(selected, opts)
    else
        actions.file_edit_or_qf(selected, opts)
    end
end

config.defaults.keymap.builtin['<A-u>'] = 'preview-page-up'
config.defaults.keymap.builtin['<A-d>'] = 'preview-page-down'

require("fzf-lua").setup {
    keymap = {
        fzf = {
            ["ctrl-c"]  = "abort",
            ["ctrl-d"]  = "half-page-down",
            ["ctrl-u"]  = "half-page-up",
            ["ctrl-w"]  = "backward-kill-word",
            ["alt-g"]   = "first",
            ["alt-G"]   = "last",
        },
    },
    actions = {
        files = {
            ["enter"]   = my_file_open,
            -- ["enter"]   = actions.file_tabedit,
            ["alt-w"]   = actions.file_split,
            ["alt-v"]   = actions.file_vsplit,
        },
    }
}

keymap.set("n", "sf", function() require('fzf-lua').files() end, opts)

keymap.set("n", "<Leader>t", function() require('fzf-lua').grep_cword() end, opts)
keymap.set("n", "<Leader>f", function() require('fzf-lua').grep() end, opts)

