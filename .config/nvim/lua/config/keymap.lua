local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "Y", "y$")

