vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ff00aa gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#c74ded gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#00e8c6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#96e072 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#ffe659 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#f3a642 gui=nocombine]]

vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
	space_char_blankline = " ",
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	}
}
