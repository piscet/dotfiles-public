local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local actions = require("fzf-lua").actions


require("fzf-lua").setup {
    keymap = {
        fzf = {
            ["ctrl-c"]  = "abort",
            ["ctrl-d"]  = "half-page-down",
            ["ctrl-u"]  = "half-page-up",
            ["ctrl-w"]  = "backward-kill-word",
            -- ["ctrl-j"]  = "preview-down",
            -- ["ctrl-k"]  = "preview-up",
        },
    },
    actions = {
        files = {
            ["enter"]   = actions.file_tabedit,
            -- ["ctrl-w"]  = actions.file_split,
            ["ctrl-v"]  = actions.file_vsplit,
            -- ["ctrl-w"]  = actions.file_split,
            -- ["ctrl-v"]  = actions.file_vsplit,
            -- ["alt-q"]  = actions.file_sel_to_qf,
            -- ["alt-Q"]  = actions.file_sel_to_ll,
            -- ["alt-i"]  = { fn = actions.toggle_ignore, reuse = true, header = false },
            -- ["alt-h"]  = { fn = actions.toggle_hidden, reuse = true, header = false },
            -- ["alt-f"]  = { fn = actions.toggle_follow, reuse = true, header = false },
        },
    }
}

keymap.set("n", "sf", function() require('fzf-lua').files() end, opts)

keymap.set("n", "<Leader>t", function() require('fzf-lua').grep_cword() end, opts)
keymap.set("n", "<Leader>f", function() require('fzf-lua').grep() end, opts)

-- 
-- keymap.set("n", "", "<cmd>lua require('fzf-lua').files()<Return>")
