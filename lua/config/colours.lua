vim.g.edge_style = "aura"  -- Options: dark, neon, aura
vim.g.edge_better_performance = 1

-- vim.api.nvim_create_autocmd("ColorScheme", {
  -- pattern = "onedark",
  -- callback = function()
    -- local grey = "#ABB2BF" -- Light grey (OneDark-style)

    -- vim.api.nvim_set_hl(0, "Delimiter", { fg = grey, default = false })
    -- vim.api.nvim_set_hl(0, "@punctuation", { fg = grey, default = false })
    -- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = grey, default = false })
    -- vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = grey, default = false, link = nil }) -- Force it off Comment
    -- vim.api.nvim_set_hl(0, "@punctuation.special", { fg = grey, default = false })
  -- end,
-- })

-- vim.api.nvim_create_autocmd("ColorScheme", {
  -- pattern = "*",
  -- callback = function()
    -- vim.cmd("highlight! link @punctuation.delimiter Comment")
    -- vim.api.nvim_set_hl(0, "Delimiter", { fg = "#ABB2BF", default = false })
  -- end,
-- })
