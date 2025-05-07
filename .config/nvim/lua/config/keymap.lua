local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- basic
keymap.set("n", "Y", "y$", opts)
keymap.set("n", "<esc><esc>", ":noh<Return>", opts)
keymap.set("n", "s", "<nop>", opts)

-- Move tab
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "ss", ":tabnext<Return>", opts)
keymap.set("n", "sn", ":tabnext<Return>", opts)
keymap.set("n", "sp", ":tabprev<Return>", opts)

-- Move Window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Swap Window
keymap.set("n", "sH", "<C-w>H", opts)
keymap.set("n", "sJ", "<C-w>J", opts)
keymap.set("n", "sK", "<C-w>K", opts)
keymap.set("n", "sL", "<C-w>L", opts)

-- Split Window

keymap.set("n", "sw", ":new<Return>", opts)
keymap.set("n", "sv", ":vnew<Return>", opts)
keymap.set("n", "sW", ":sp<Return>", opts)
keymap.set("n", "sV", ":vs<Return>", opts)
keymap.set("n", "sd", ":tab split<Return>", opts)

-- Close Window

keymap.set("n", "sq", "<C-w>q", opts)

keymap.set("n", "sc", ":tabe<Return>", opts)

keymap.set("n", "s1", ":tabnext 1<Return>", opts)
keymap.set("n", "s2", ":tabnext 2<Return>", opts)
keymap.set("n", "s3", ":tabnext 3<Return>", opts)
keymap.set("n", "s4", ":tabnext 4<Return>", opts)
keymap.set("n", "s5", ":tabnext 5<Return>", opts)
keymap.set("n", "s6", ":tabnext 6<Return>", opts)
keymap.set("n", "s7", ":tabnext 7<Return>", opts)
keymap.set("n", "s8", ":tabnext 8<Return>", opts)
keymap.set("n", "s9", ":tabnext 9<Return>", opts)

keymap.set("n", "sgf", "<C-w>gf", opts)
keymap.set("n", "sgF", "<C-w>gF", opts)

-- leader
keymap.set("n", "<Leader>,", ":tabe ~/.config/nvim/lua/config/options.lua<Return>", opts)
keymap.set("n", "<Leader>.", ":tabe ~/.config/nvim/lua/config/keymap.lua<Return>", opts)

-- quickfix
keymap.set("n", "<C-g>", "<Nop>", opts)
keymap.set("n", "<C-g>q", ":ccl<Return>", opts)
keymap.set("n", "<C-n>", ":cnext<Return>", opts)
keymap.set("n", "<C-p>", ":cprev<Return>", opts)

-- command
keymap.set("c", "<C-a>", "<Home>")
keymap.set("c", "<C-e>", "<End>")
keymap.set("c", "<C-f>", "<Right>")
keymap.set("c", "<C-b>", "<Left>")
keymap.set("c", "<A-a>", "<Nop>")
keymap.set("c", "<A-e>", "<Nop>")
keymap.set("c", "<A-f>", "<S-Right>")
keymap.set("c", "<A-b>", "<S-Left>")

