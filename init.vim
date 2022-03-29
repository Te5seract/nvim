call plug#begin()

    "Plug 'preservim/nerdtree'
    "Plug 'kien/ctrlp.vim'
    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    "Plug 'junegunn/fzf.vim'
    "Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    "Plug 'ryanoasis/vim-devicons'
    "Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
    "Plug 'dyng/ctrlsf.vim'
    "Plug 'mileszs/ack.vim'
    "Plug 'tpope/vim-fugitive'
    "Plug 'airblade/vim-gitgutter'

    "colorschemes
    "Plug 'safv12/andromeda.vim'
    "Plug 'joshdick/onedark.vim'
    "Plug 'sainnhe/sonokai'
    "Plug 'sainnhe/edge'

    "effects
    "Plug 'tribela/vim-transparent'

    "emmet
    "Plug 'mattn/emmet-vim'

    "nerd commenter
    "Plug 'preservim/nerdcommenter'

    "surround
    "Plug 'tpope/vim-surround'

    "tab styling
    "Plug 'romgrk/barbar.nvim'
    "Plug 'kyazdani42/nvim-web-devicons'

    "indent lines

call plug#end()

syntax on

set guifont=HasKlug\ Nerd\ Font
set background=dark
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab 
set autoindent
set smartindent
set nowrap
set termguicolors
set encoding=UTF-8
set noswapfile
set cursorline

filetype plugin on

let g:webdevicons_enable_nerdtree = 1
let &shell='cmd.exe'
"let g:airline_theme='bubblegum'
let g:airline_theme='deus'

let g:airline_powerline_fonts = 1

"echodoc (tooltips)
let g:echodoc#type = "echo"
" Or, you could use neovim's floating text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
" To use a custom highlight for the float window,
" change Pmenu to your highlight group
highlight link EchoDocFloat Pmenu

"git guttter
let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)
let g:gitgutter_realtime=0
let g:gitgutter_eager=0

"macros
let @m="i/*  */\<Esc>"
let @b="i/* ================================================ */\<Esc>"
let @h="i/* //////////////////////////////////////////////// */\<Esc>"

"Ag
let g:ackprg = 'ag --vimgrep'

" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"color scheme
colorscheme edge 
"colorscheme andromeda

"key mapping
let mapleader = " "
nnoremap <leader>d :m .+1<CR>
nnoremap <leader>u :m .-2<CR>

nnoremap <C-n> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTreeFind<CR>
nnoremap <C-F> :Files<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

augroup twig_ft
  au!
  autocmd BufNewFile,BufRead *.html.twig   set syntax=html
augroup END

lua require('init')
