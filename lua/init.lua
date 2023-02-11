require("installed/packer");

--configs
require("startup").setup(require("config/startup/startup-config"))

require("config/colorizer/colorizer-config")

require("config/blankline/blankline-config")

require("config/lsp-signature/lsp-signature-config")

require("config/nvim-tree/nvim-tree")

require("config/telescope/telescope")

require("config/lsp_config/lsp_config")

require("config/treesitter/treesitter")

--colorscheme
--require("material").setup()
