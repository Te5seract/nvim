require("nvim-highlight-colors").setup ({
	render = "first_column", -- or 'foreground' or 'first_column'
	enable_named_colors = false,
	enable_tailwind = false
})

--vim.api.nvim_exec([[
	--set termguicolors
	--set t_Co=256
--]], true)

require("nvim-highlight-colors").turnOn()
