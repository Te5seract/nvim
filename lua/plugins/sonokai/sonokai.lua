vim.api.nvim_exec([[
    if has("termguicolors")
      set termguicolors
    endif

    let g:sonokai_style = "espresso"
	let g:sonokai_enable_italic = 1
]], true)

	--let g:sonokai_colors_override = {"yellow" : ["#78E067", "179"], "orange" : ["#ff0d7e", "215"], "purple" : ["#F39C1B", "176"]}
	--let g:sonokai_colors_override = {"yellow" : ["#78E067", "179"], "green" : ["#FFE66D", "107"], "orange" : ["#F39C1B", "215"], "red" : ["#C74DED", "203"], "purple" : ["#ff0d7e", "176"], "blue" : ["#00E8C6", "110"]}

vim.cmd("colorscheme sonokai")

