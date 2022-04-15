
"neovide
let g:neovide_cursor_vfx_mode = "railgun"

syntax on

set guifont=HasKlug\ Nerd\ Font:h8
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
"let g:airline_theme='deus'

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

"one theme config
let g:airline_molokai_bright = 1
let g:airline_solarized_normal_green = 1


"color scheme
"colorscheme edge 
"colorscheme andromeda
"colorscheme sonokai
colorscheme one
"colorscheme onedark
"colorscheme atom-dark-256

" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'aura'
let g:edge_better_performance = 1

"key mapping
let mapleader = " "
nnoremap <leader>d :m .+1<CR>
nnoremap <leader>u :m .-2<CR>
nnoremap <leader>s :resize +2<CR>
nnoremap <leader>S :resize -2<CR>
nnoremap <leader>v :vertical resize +2<CR>
nnoremap <leader>V :vertical resize -2<CR>

nnoremap <C-z> :Rg<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTreeFind<CR>
nnoremap <C-F> :Files<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"augroup twig_ft
  "au!
  "autocmd BufNewFile,BufRead *.html.twig   set syntax=html
"augroup END

lua require('init')
