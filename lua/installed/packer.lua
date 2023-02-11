local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' ';
vim.g.maplocalleader = ' ';

require('lazy').setup({
    ------------------------------------------------------
    ------------------------------------------------------
    --code helpers
 
    --line indentation
    { "lukas-reineke/indent-blankline.nvim" },

    --code commenting commands
    "preservim/nerdcommenter",

    --html generator
    "mattn/emmet-vim",

    --surround with container chars
    "tpope/vim-surround",

    --show colour on css colour codes
    "norcalli/nvim-colorizer.lua",

    --javascript syntax hilighting and formatting
    "pangloss/vim-javascript",

    --twig syntax hilighting
    "nelsyeung/twig.vim",

    --php syntax hilighting
    "StanAngeloff/php.vim",

    --auto closing brackets, quotes and all that
    "jiangmiao/auto-pairs",

    --JSX syntax hilighting
    "mxw/vim-jsx",

    --colour mode toggle
    "amadeus/vim-convert-color-to",

    --wordpress auto complete & suggestions
    "dsawardekar/wordpress.vim",

    --tree sitter
    "nvim-treesitter/nvim-treesitter",

    --end code helpers
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --intellisense & docs

    --code suggestions
    --{"neoclide/coc.nvim", branch = "release"},

    --mason (intellisense)
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap"
    },

    --show function documentation while writing
    "shougo/echodoc.vim",

    --show function documentation in suggestions
    "ray-x/lsp_signature.nvim",

    --end intellisense & docs
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --file & buffer searching
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
        dependancies = { {'nvim-lua/plenary.nvim'} }
    },
    --fuzzy finder
    --"junegunn/fzf.vim",
    --"junegunn/fzf",
    --{'junegunn/fzf', dir = '~/.fzf', build = './install --all' },

    --file tree
    "preservim/nerdtree",

    --nvim tree
    {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    },

    --search files or buffers
    "kien/ctrlp.vim",

    --search within files
    "mhinz/vim-grepper",

    --search within file
    "dyng/ctrlsf.vim",

    --search within file
    "mileszs/ack.vim",

    --end file & buffer searching
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --ui styling

    --status bar styling
    "vim-airline/vim-airline",
    "vim-airline/vim-airline-themes",

    --transaprent background
    "tribela/vim-transparent",

    -- file tabs
    "romgrk/barbar.nvim",

    {
        "startup-nvim/startup.nvim",
        dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            --require"startup".setup(require"configs.startup_nvim")
        end
    },

    --end ui styling
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --icons

    "ryanoasis/vim-devicons",
    "kyazdani42/nvim-web-devicons",

    --end icons
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --git

    --git commands in vim
    "tpope/vim-fugitive",

    --gitsigns
    {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    },

    --end git
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --colorschemes

    "safv12/andromeda.vim",
    "joshdick/onedark.vim",
    "sainnhe/sonokai",
    "sainnhe/edge",
    "rakr/vim-one",
    "marko-cerovac/material.nvim",
    "gosukiwi/vim-atom-dark",
    "morhetz/gruvbox",

    --end colorschemes
    ------------------------------------------------------
    ------------------------------------------------------
})
