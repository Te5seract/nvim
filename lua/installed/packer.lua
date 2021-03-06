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
    use "airblade/vim-gitgutter"

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

    --end colorschemes
    ------------------------------------------------------
    ------------------------------------------------------

end)
