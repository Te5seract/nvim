local builtin = require("telescope.builtin")
local fb_actions = require("telescope").extensions.file_browser.actions

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>bb", builtin.buffers, {})

require("telescope").setup {
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = "move_selection_next",
				["<C-k>"] = "move_selection_previous"
			}
		}
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous"
				},
				["n"] = {
				}
			},
		}
	}
}
