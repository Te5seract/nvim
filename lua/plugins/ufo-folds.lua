local ftMap = {
    vim = 'indent',
    python = {'indent'},
    git = ''
}

require('ufo').setup({
    open_fold_hl_timeout = 150,
    close_fold_kinds_for_ft = {
        default = {'imports', 'comment'},
        json = {'array'},
        c = {'comment', 'region'}
    },
    preview = {
        win_config = {
            border = {'', '─', '', '', '', '─', '', ''},
            winhighlight = 'Normal:Folded',
            winblend = 0
        },
        mappings = {
            scrollU = '<C-u>',
            scrollD = '<C-d>',
            jumpTop = '[',
            jumpBot = ']'
        }
    },
    provider_selector = function(_, _, _)
        return { "treesitter", "indent" }  -- Use LSP instead of CoC
      end
})

vim.keymap.set('n', 'K', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()

    if not winid then
        -- choose one of coc.nvim and nvim lsp
        -- vim.fn.CocActionAsync('definitionHover') -- coc.nvim
        vim.lsp.buf.hover()
    end
end)

vim.keymap.set("n", "K", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()  -- Uses LSP hover instead of CoC
  end
end, { desc = "Show hover info or fold preview" })

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.lua",
  callback = function()
    vim.cmd("normal! zR") -- Open all folds when opening Lua files
  end,
})
