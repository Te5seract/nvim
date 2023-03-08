local lsp = require('lsp-zero').preset({
  	name = 'minimal',
  	set_lsp_keymaps = true,
  	manage_nvim_cmp = false,
	suggest_lsp_servers = false,
})

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')

local cmp_config = lsp.defaults.cmp_config({
  	window = {
    	completion = cmp.config.window.bordered()
  	},
	mapping = lsp.defaults.cmp_mappings({
		['<Tab>'] = vim.NIL,
		["<C-j>"] = function(fallback)
			if cmp.visible() then
			  cmp.select_next_item()
			else
			  fallback()
			end
		end,
		["<C-k>"] = function(fallback)
			if cmp.visible() then
			  cmp.select_prev_item()
			else
			  fallback()
			end
		end
	})
})

cmp.setup(cmp_config)
