local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- colourscheme switcher
local function set_colorscheme(name)
  vim.cmd("colorscheme " .. name)
  vim.g.colors_name = name
  vim.fn.writefile({ name }, vim.fn.stdpath("config") .. "/colorscheme.txt")
end

-- Load last used colorscheme
local last_scheme_file = vim.fn.stdpath("config") .. "/colorscheme.txt"
if vim.fn.filereadable(last_scheme_file) == 1 then
  local last_scheme = vim.fn.readfile(last_scheme_file)[1]
  if last_scheme then
    set_colorscheme(last_scheme)
  end
end

vim.keymap.set("n", "<leader>cs", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
    attach_mappings = function(_, map)
      map("i", "<CR>", function(prompt_bufnr)
        local selection = require("telescope.actions.state").get_selected_entry()
        if selection then
          set_colorscheme(selection.value)
        end
        require("telescope.actions").close(prompt_bufnr)
      end)
      return true
    end,
  })
end, { desc = "Switch Colorscheme" })
