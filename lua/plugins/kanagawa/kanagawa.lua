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
    bg = "#23262e", -- 23262e
	springBlue = "#ee5d43",
	crystalBlue = "#ffe66d",
	springGreen = "#96e072",
	waveRed = "#ff008e",
	carpYellow = "#00e8c6", -- light blue
	oniViolet = "#c74ded", -- purple
	fujiWhite = "#f3a642", -- orange 12e8c6
	waveAqua2 = "#ffe66d",
	boatYellow2 = "#c74ded", -- yellow f38b55
	surimiOrange = "#ee5d43",
	autumnGreen = "#00e8c6", -- light blue (for lua line)
	sakuraPink = "#96e072",
}

require('kanagawa').setup({ overrides = overrides, colors = my_colors })

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
