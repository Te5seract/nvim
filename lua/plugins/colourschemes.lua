return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      -- vim.cmd.colorscheme "kanagawa" -- variants: wave, dragon, lotus
    end
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load this first
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          nvimtree = true,
          treesitter = true,
          native_lsp = { enabled = true },
          telescope = { enabled = true },
          gitsigns = true,
        }
      })
      -- vim.cmd.colorscheme "catppuccin"
    end
  },

  {
    "idr4n/andromeda.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("andromeda").setup({
        transparent = false, -- Set to true if you want your terminal wallpaper to show through
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
        },
        -- This ensures it plays nice with the plugins you already have
        plugins = {
          all = true,
          ["nvim-tree"] = true,
          telescope = true,
          gitsigns = true,
        },
      })
      vim.cmd.colorscheme "andromeda"
    end,
  }
}
