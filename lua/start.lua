local plugins = "plugins/"
local overrides = "overrides/"

--/////////////////////////////////////////
-- general settings
require("config/settings")
require("config/mappings")

--/////////////////////////////////////////
-- installed plugins
require("installed/installed")
require(plugins .. "telescope/telescope")


--/////////////////////////////////////////
-- plugin configurations

-- =======================================
-- file explorers

require(plugins .. "nvimtree/nvimtree")

-- end file explorers
-- =======================================

-- =======================================
-- colourschemes

-- one dark config
require(plugins .. "onedark/onedark")

-- end colourschemes
-- =======================================

-- =======================================
-- UI styling

require(plugins .. "lualine/lualine")
require(plugins .. "blankline/blankline")
require(plugins .. "winbar/winbar")
require(plugins .. "bufferline/bufferline")

-- end UI styling
-- =======================================

-- =======================================
-- code helpers

require(plugins .. "treesitter/treesitter")
require(plugins .. "mason/mason")
require(plugins .. "lsp-zero/lsp-zero")
require(plugins .. "gitsigns/gitsigns")

-- end code helpers
-- =======================================

-- =======================================
-- overrides

require(overrides .. "/telescope-ui")

-- end overrides
-- =======================================
