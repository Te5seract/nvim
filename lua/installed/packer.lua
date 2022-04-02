require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    ------------------------------------------------------
    ------------------------------------------------------
    --code helpers
 
    --line indentation
    use "lukas-reineke/indent-blankline.nvim"

    --code commenting commands
    use "preservim/nerdcommenter"

    --html generator
    use "mattn/emmet-vim"

    --surround with container chars
    use "tpope/vim-surround"

    --show colour on css colour codes
    use "norcalli/nvim-colorizer.lua"

    --javascript syntax hilighting and formatting
    use "pangloss/vim-javascript"

    --twig syntax hilighting
    use "nelsyeung/twig.vim"

    --php syntax hilighting
    use "StanAngeloff/php.vim"

    --end code helpers
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --intellisense & docs

    --code suggestions
    use {"neoclide/coc.nvim", branch = "release"}

    --show function documentation while writing
    use "shougo/echodoc.vim"

    --show function documentation in suggestions
    use "ray-x/lsp_signature.nvim"

    --end intellisense & docs
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --file & buffer searching

    --fuzzy finder
    use "junegunn/fzf.vim"
    use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }

    --file tree
    use "preservim/nerdtree"

    --search files or buffers
    use "kien/ctrlp.vim"

    --search within files
    use "mhinz/vim-grepper"

    --search within file
    use "dyng/ctrlsf.vim"

    --search within file
    use "mileszs/ack.vim"

    --end file & buffer searching
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --ui styling

    --status bar styling
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    --transaprent background
    use "tribela/vim-transparent"

    -- file tabs
    use "romgrk/barbar.nvim"

    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            --require"startup".setup(require"configs.startup_nvim")
        end
    }

    --end ui styling
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --icons

    use "ryanoasis/vim-devicons"
    use "kyazdani42/nvim-web-devicons"

    --end icons
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --git

    --git commands in vim
    use "tpope/vim-fugitive"

    --show file changes
    --use "airblade/vim-gitgutter"

    --gitsigns
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    --end git
    ------------------------------------------------------
    ------------------------------------------------------


    ------------------------------------------------------
    ------------------------------------------------------
    --colorschemes

    use "safv12/andromeda.vim"
    use "joshdick/onedark.vim"
    use "sainnhe/sonokai"
    use "sainnhe/edge"
    use "rakr/vim-one"
    use "marko-cerovac/material.nvim"
    use "gosukiwi/vim-atom-dark"
    use "morhetz/gruvbox"

    --end colorschemes
    ------------------------------------------------------
    ------------------------------------------------------

end)
