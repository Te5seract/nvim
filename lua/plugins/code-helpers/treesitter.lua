require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { 
	  	"bash",
        "c",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml", 
	},

  sync_install = false,
  auto_install = true,

  indent = {
	  enable = true
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
