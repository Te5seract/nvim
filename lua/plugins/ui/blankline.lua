vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ff5798 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#c75fed gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#31e8c8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#a3e083 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#ffe86c gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#f3a642 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#ee6456 gui=nocombine]]

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
		"IndentBlanklineIndent7",
	}
}
