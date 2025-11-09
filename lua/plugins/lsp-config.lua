return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"lua_ls", "pyright", "ts_ls"}
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("lua_ls", {}); vim.lsp.enable("lua_ls")
            vim.lsp.config("pyright", {}); vim.lsp.enable("pyright")
            vim.lsp.config("ts_ls", {});   vim.lsp.enable("ts_ls")
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
