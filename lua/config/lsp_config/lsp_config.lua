require("mason").setup()
require"lspconfig".pyright.setup {}

require("mason-lspconfig").setup {
    ensure_installed = { "sumneko_lua", "rust_analyzer", "clangd", "cssls", "emmet_ls", "html", "quick_lint_js", "marksman", "intelephense", "jsonls" },
}

require("lspconfig").sumneko_lua.setup {}
