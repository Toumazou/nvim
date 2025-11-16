return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "ts_ls",
            "pyright",
            "lua_ls",
        },
    },
---Mason loads before Mason-lsp config, and nvim-lsp config loads before Mason-lsp config
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
            },
        },
        "neovim/nvim-lspconfig"
    }
}
