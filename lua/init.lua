require("installed/packer");


--configs
require("startup").setup(require("config/startup/startup-config"))

require("config/colorizer/colorizer-config")

require("config/blankline/blankline-config")

require("config/lsp-signature/lsp-signature-config")

require("config/windline/windline_config");

--require("config/lualine/lualine_config");

--colorscheme
--require("material").setup()
