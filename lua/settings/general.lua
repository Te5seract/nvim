vim.opt.tabstop = 4        -- Number of spaces for a tab
vim.opt.shiftwidth = 4     -- Number of spaces for auto-indent
vim.opt.softtabstop = 4    -- Number of spaces when pressing <Tab>
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.o.shada = ""
vim.opt.number = true          -- Enable line numbers
vim.opt.relativenumber = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false  -- Start with folds closed (set to true if you want them open)
vim.opt.foldlevel = 99      -- Keep most folds open

vim.opt.wrap = false;

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "css", "scss", "sass", "less" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  end,
})
