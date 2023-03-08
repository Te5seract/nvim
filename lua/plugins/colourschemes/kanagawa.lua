local my_colors = {
    sumiInk3 = "#1B1B2E", -- 23262e
	sumiInk4 = "#171729",
	sumiInk6 = "#313154",
	springBlue = "#ee6456",
	crystalBlue = "#ffe86c",
	springGreen = "#a3e083",
	waveRed = "#ff5798",
	carpYellow = "#31e8c8", -- light blue
	oniViolet = "#c75fed", -- purple
	fujiWhite = "#f3a642", -- orange 12e8c6
	waveAqua2 = "#ffe86c",
	boatYellow2 = "#ee6456", -- yellow f38b55
	surimiOrange = "#ee6456",
	autumnGreen = "#31e8c8", -- light blue (for lua line)
	sakuraPink = "#a3e083",
	fujiGray = "#37375E",
	oldWhite = "#31e8c8",
	waveAqua1 = "#fd75ff",
	oniViolet2 = "#31e8c8"
}

require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    theme = "default",           -- Load "default" theme or the experimental "light" theme
	colors = {
		palette = my_colors
	}
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
