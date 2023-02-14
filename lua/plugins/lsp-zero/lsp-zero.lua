local cmp = require("cmp")
local lsp = require("lsp-zero").preset({
  name = "minimal",
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- key mappings
lsp.setup_nvim_cmp({
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = function(fallback)
			if cmp.visible() then
			  cmp.select_next_item()
			else
			  fallback()
			end
		end,
		["<C-j>"] = function(fallback)
			if cmp.visible() then
			  cmp.select_prev_item()
			else
			  fallback()
			end
		end
	})
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
