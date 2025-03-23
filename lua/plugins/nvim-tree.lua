require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",  -- Or "right"
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
      },
    },
  },
  filters = {
    dotfiles = false, -- Show hidden files
    custom = {}
  },
  actions = {
    open_file = {
      quit_on_open = false, -- Close tree after opening file
    },
  },
    git = {
        enable = true,
        ignore = false
    }
})

-- Keymap to toggle file tree
vim.keymap.set("n", "<leader>o", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
