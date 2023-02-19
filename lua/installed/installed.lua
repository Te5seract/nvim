require("../plugins/lazyvim/lazyvim")

require("lazy").setup({
	--/////////////////////////////////////////
	-- file explorers

	-- nvim tree
	{
		"nvim-tree/nvim-tree.lua",
		tag = "nightly"
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
		}
	},

	"nvim-telescope/telescope-symbols.nvim",
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-lua/popup.nvim",

	-- end file explorers
	--/////////////////////////////////////////

	--/////////////////////////////////////////
	-- colour schemes

	-- one dark
	"navarasu/onedark.nvim",

	-- kanagawa
	"rebelot/kanagawa.nvim",

	-- onenord
	"rmehri01/onenord.nvim",

	-- neon
	"rafamadriz/neon",

	-- doom-one
	"NTBBloodbath/doom-one.nvim",

	-- palenightfall
	"JoosepAlviste/palenightfall.nvim",

	-- one pro
	"rafamadriz/onepro",

	-- catppuccin
	{ "catppuccin/nvim", name = "catppuccin" },

	-- andromeda
	"safv12/andromeda.vim",

	-- end colour schemes
	--/////////////////////////////////////////

	--/////////////////////////////////////////
	-- UI styling

	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", opt = true }
	},

	-- blankline
	{ "lukas-reineke/indent-blankline.nvim" },

	-- winbar
	"fgheng/winbar.nvim",

	-- bufferline
	{"akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons"},

	-- end UI styling
	--/////////////////////////////////////////

	--/////////////////////////////////////////
	-- code helpers

	-- tree sitter (better syntax highlighting)
	"nvim-treesitter/nvim-treesitter",

	-- mason lsp installer
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	{
	  	"VonHeikemen/lsp-zero.nvim",
	  	branch = "v1.x",
	  	dependencies = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},             -- Required
			{"williamboman/mason.nvim"},           -- Optional
			{"williamboman/mason-lspconfig.nvim"}, -- Optional

			-- Autocompletion
			{"hrsh7th/nvim-cmp"},         -- Required
			{"hrsh7th/cmp-nvim-lsp"},     -- Required
			{"hrsh7th/cmp-buffer"},       -- Optional
			{"hrsh7th/cmp-path"},         -- Optional
			{"saadparwaiz1/cmp_luasnip"}, -- Optional
			{"hrsh7th/cmp-nvim-lua"},     -- Optional

			-- Snippets
			{"L3MON4D3/LuaSnip"},             -- Required
			{"rafamadriz/friendly-snippets"}, -- Optional
	  	}
	},

	-- surround
	"tpope/vim-surround",

	-- auto closing brackets, strings, etc...
	"jiangmiao/auto-pairs",

	-- git signs
	"lewis6991/gitsigns.nvim",

	-- commenting
	"preservim/nerdcommenter",

	"mattn/emmet-vim",

	-- end code helpers
	--/////////////////////////////////////////
})
