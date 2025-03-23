require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- LSP stuff
require("mason-lspconfig").setup {
    ensure_installed = { 
	    "lua_ls", 
	    "ts_ls",
	    "stimulus_ls",
	    "intelephense",
	    "jsonls",
	    "twiggy_language_server",
	    "somesass_ls",
	    "unocss",
	    "yamlls",
        "emmet_ls",
    }
}

require("lspconfig").lua_ls.setup({})

require("lspconfig").ts_ls.setup({
  	on_attach = function(client, bufnr)
		-- Disable formatting to avoid conflicts with other formatters (Prettier, Eslint, etc.)
		client.server_capabilities.documentFormattingProvider = false
	end,
	capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Enable autocompletion
})

-- js
require("lspconfig").stimulus_ls.setup({})

-- php
require("lspconfig").intelephense.setup({})

-- json
require("lspconfig").jsonls.setup({})

-- html
require("lspconfig").twiggy_language_server.setup({})

-- scss
require("lspconfig").somesass_ls.setup({})

-- css
require("lspconfig").unocss.setup({})

-- yaml
require("lspconfig").yamlls.setup({})

-- emmet for HTML tabbing
require("lspconfig").emmet_ls.setup({
  filetypes = { "html", "css", "javascriptreact", "typescriptreact", "javascript", "php" },
})

-- auto completion
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item() -- Navigate suggestions
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump() -- Expand snippet if available
          else
            fallback() -- Default tab behavior
          end
        end,
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "path" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "emmet_ls" },
    { name = "luasnip" },
  }),
})

-- PHP auto completion
local lspconfig = require("lspconfig")

lspconfig.intelephense.setup({
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000, -- Allow larger files
      },
    },
  },
})

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
	"php", 
	"html", 
	"css", 
	"javascript", 
	"scss", 
	"yaml", 
	"json",
    "typescript",
    "tsx",
  }, -- Add other languages as needed
  highlight = {
    enable = true, -- Enable Treesitter syntax highlighting
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

require'treesitter-context'.setup { enable = true }
