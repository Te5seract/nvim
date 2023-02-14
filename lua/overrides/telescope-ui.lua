TelescopeColours = {
	TelescopePromptBorder = {
		fg = "#262742",
		bg = "#262742"
	},
	TelescopePromptNormal = {
		fg = "#5D6099",
		bg = "#262742"
	},
	TelescopeNormal = {
		bg = "#1F2036",
		fg = "#5D6099"
	},
	TelescopeResultsBorder = {
		bg = "#1F2036",
		fg = "#1F2036"
	},
	TelescopePreviewBorder = {
		bg = "#1A1B2E",
		fg = "#1A1B2E"
	},
	TelescopePreviewNormal = {
		bg = "#1A1B2E",
		fg = "#5D6099"
	},
	TelescopeResultsTitle = {
		fg = "",
		-- fg = "#6057FF"
	},
	TelescopePromptTitle = {
		fg = ""
	},
	TelescopePreviewTitle = {
		fg = ""
	}
}

for hl, col in pairs(TelescopeColours) do
	vim.api.nvim_set_hl(0, hl, col);
end

