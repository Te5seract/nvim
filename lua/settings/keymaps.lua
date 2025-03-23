-- leader
vim.g.mapleader = " "   -- Space as leader
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- folds
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
vim.keymap.set("n", "<leader>z", "za", { desc = "Toggle fold" })
