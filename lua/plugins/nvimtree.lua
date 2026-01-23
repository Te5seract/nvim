return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false, -- Load on startup so it's ready to go
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Optional but recommended for file icons
    },
    config = function()
      -- 1. Disable netrw (built-in file explorer) as recommended
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- 2. Setup the tree
      require("nvim-tree").setup({
        view = {
          width = 35,
          relativenumber = false, -- Nice for jumping around
        },
        renderer = {
          group_empty = true, -- Combines empty folders like 'src/main/java'
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        filters = {
          dotfiles = false, -- Set to true to hide .git, .env, etc.
        },
      })

      -- 3. Keybinds (Specific to the Tree)
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Tree' })
      vim.keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', { desc = 'Refresh File Tree' })
    end,
  }
}
