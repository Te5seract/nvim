vim.api.nvim_exec([[
    if has("termguicolors")
      set termguicolors
    endif

	g:edge_enable_italic = 6
	
	let g:edge_colors_override = {
			\ "bg0": ["#292233", "235"], 
			\ "bg_dim" : ["#231d2b", "232"],
			\ "blue" : ["#39aafe", "110"],
			\ "cyan" : ["#ffe09d", "72"]
		\ }

    let g:edge_style = "neon"
    let g:edge_better_performance = 1
]], true)

	--let g:edge_colors_override = {
			--\ "bg0": ["#131633", "235"], 
			--\ "bg1": ["#0a0c1c", "236"],
			--\ "bg2": ["#0a0c1c", "237"],
			--\ "bg3": ["#0a0c1c", "237"],
			--\ "bg4": ["#0a0c1c", "238"],
		--\ }

vim.cmd("colorscheme edge")
