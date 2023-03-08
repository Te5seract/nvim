require("plugins/lazy-nvim")

require("lazy").setup({
	-----------------------------------------------
	-----------------------------------------------
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
	-----------------------------------------------
	-----------------------------------------------

	-----------------------------------------------
	-----------------------------------------------
	-- code helpers

	-- lsp zero
	{
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
	  }
	},

	-- tree sitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- emmet
	"mattn/emmet-vim",

	-- nvim highlight colours
	"brenoprata10/nvim-highlight-colors",

	-- commenting
	"preservim/nerdcommenter",

	-- surround
	"tpope/vim-surround",

	-- auto closing brackets, strings, etc...
	"jiangmiao/auto-pairs",

	-- end code helpers
	-----------------------------------------------
	-----------------------------------------------

	-----------------------------------------------
	-----------------------------------------------
	-- colourschemes
	
	-- kanagawa
	"rebelot/kanagawa.nvim",

	-- end colourschemes
	-----------------------------------------------
	-----------------------------------------------

	-----------------------------------------------
	-----------------------------------------------
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
	-----------------------------------------------
	-----------------------------------------------

	-----------------------------------------------
	-----------------------------------------------
	-- git

	-- git signs
	"lewis6991/gitsigns.nvim",
	
	-- end git
	-----------------------------------------------
	-----------------------------------------------
})
