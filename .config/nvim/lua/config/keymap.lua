local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "Y", "y$")

keymap.set("n", "s", "<nop>")

-- Move tab
keymap.set("n", "<tab>", ":tabnext<Return>")
keymap.set("n", "<s-tab>", ":tabprev<Return>")
keymap.set("n", "ss", ":tabnext<Return>")
keymap.set("n", "sn", ":tabnext<Return>")
keymap.set("n", "sp", ":tabprev<Return>")

-- Move Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

-- Swap Window
keymap.set("n", "sH", "<C-w>H")
keymap.set("n", "sJ", "<C-w>J")
keymap.set("n", "sK", "<C-w>K")
keymap.set("n", "sL", "<C-w>L")

-- Split Window

keymap.set("n", "sw", ":new<Return>")
keymap.set("n", "sv", ":vnew<Return>")
keymap.set("n", "sW", ":sp<Return>")
keymap.set("n", "sV", ":vs<Return>")

-- Close Window

keymap.set("n", "sq", "<C-w>q")

keymap.set("n", "sc", ":tabe<Return>")
keymap.set("n", "sf", ":e .<Return>")

keymap.set("n", "s1", ":tabnext 1<Return>")
keymap.set("n", "s2", ":tabnext 2<Return>")
keymap.set("n", "s3", ":tabnext 3<Return>")
keymap.set("n", "s4", ":tabnext 4<Return>")
keymap.set("n", "s5", ":tabnext 5<Return>")
keymap.set("n", "s6", ":tabnext 6<Return>")
keymap.set("n", "s7", ":tabnext 7<Return>")
keymap.set("n", "s8", ":tabnext 8<Return>")
keymap.set("n", "s9", ":tabnext 9<Return>")

keymap.set("n", "sgf", "<C-w>gf")
keymap.set("n", "sgF", "<C-w>gF")

