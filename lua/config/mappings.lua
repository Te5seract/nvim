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
map("n", "<leader>q", "<cmd>q<cr>")

-- delete file buffer
map("n", "<leader>xx", "<cmd>bd<cr>")

-- end leader commands
--/////////////////////////////////////////
