return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      current_line_blame = true, -- Blazing fast "Who wrote this" line blame
      current_line_blame_opts = {
        delay = 500,
        virt_text_pos = 'eol', -- Blame appears at the end of the line
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation through changes (hunks)
        map('n', ']h', function()
          if vim.wo.diff then return ']c' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, { expr = true, desc = "Next Hunk" })

        map('n', '[h', function()
          if vim.wo.diff then return '[c' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, { expr = true, desc = "Prev Hunk" })

        -- Actions: Preview the change or Reset it
        map('n', '<leader>gp', gs.preview_hunk, { desc = "Preview Git Hunk" })
        map('n', '<leader>gr', gs.reset_hunk, { desc = "Reset Git Hunk" })
      end
    }
  }
}
