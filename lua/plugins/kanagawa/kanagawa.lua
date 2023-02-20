-- Default options:
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
    colors = {},
	overrides = {},
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})

local my_colors = {
    bg = "#2d2c42", -- 23262e
	springBlue = "#ee6456",
	crystalBlue = "#ffe86c",
	springGreen = "#a3e083",
	waveRed = "#ff5798",
	carpYellow = "#31e8c8", -- light blue
	oniViolet = "#c75fed", -- purple
	fujiWhite = "#f3a642", -- orange 12e8c6
	waveAqua2 = "#ffe86c",
	boatYellow2 = "#c75fed", -- yellow f38b55
	surimiOrange = "#ee6456",
	autumnGreen = "#31e8c8", -- light blue (for lua line)
	sakuraPink = "#a3e083",
	fujiGray = "#484569",
}

require('kanagawa').setup({ overrides = overrides, colors = my_colors })

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
