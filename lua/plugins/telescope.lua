return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      
      -- Keybinds for searching
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files by Name' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep Content in All Files' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Search Open Buffers' })
      
      require('telescope').setup({
        defaults = {
          -- This makes the search window look a bit more modern
          layout_strategy = "horizontal",
          layout_config = { height = 0.95 },
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
        },
      })
    end
  }
}
