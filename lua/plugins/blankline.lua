return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏", -- A subtle vertical bar
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },
      exclude = {
        filetypes = { "help", "nvim-tree", "lazy", "mason" },
      },
    },
  }
}
