local map = vim.keymap.set

--/////////////////////////////////////////
-- key bindings

-- =======================================
-- nvim tree

map("n", "<C-o>", ":NvimTreeToggle<cr>")

-- =======================================

-- end key bidings
--/////////////////////////////////////////

--/////////////////////////////////////////
-- leader commands

-- save file
map("n", "<leader>w", "<cmd>w<cr>")

-- exit file
map("n", "<leader>qq", "<cmd>q<cr>")

-- delete file buffer
map("n", "<leader>xx", "<cmd>bd<cr>")

-- switch file types
map("n", "<leader>//", "<cmd>:set filetype=html<cr>")
map("n", "<leader>??", "<cmd>:set filetype=php<cr>")

-- end leader commands
--/////////////////////////////////////////
