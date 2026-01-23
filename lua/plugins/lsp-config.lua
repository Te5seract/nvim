return {
  {
    'saghen/blink.cmp',
    version = '*', -- Download the pre-built binary
    opts = {
      keymap = { preset = 'default' },
      appearance = { use_nvim_cmp_as_default = true, min_width = 30 },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { 'saghen/blink.cmp' }, -- Ensures blink loads first
    config = function()
      -- 1. Get the blink capabilities (This is the "magic" that fixes SCSS/CSS)
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- 2. Setup Servers
      local servers = { "lua_ls", "ts_ls", "html", "jsonls", "intelephense", "cssls" }
      
      for _, server in ipairs(servers) do
        -- We pass the blink capabilities to every server here
        vim.lsp.enable(server, { capabilities = capabilities })
      end

      -- 3. Diagnostics and Keybinds (Keep your clean logic)
      vim.diagnostic.config({
        virtual_text = { prefix = '●' },
        severity_sort = true,
        float = { border = "rounded" },
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(event)
          local opts = { buffer = event.buf }
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts)
        end,
      })
    end,
  }
}
