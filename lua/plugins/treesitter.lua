return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- Use the legacy branch where 'configs' still exists
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "lua", "javascript", "typescript", "php", "html", "css", "scss" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
}
