return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason.lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls",
                    "gopls",
                    "jdtls",
                    "clangd",
                    "svelte",
                    "cssls"
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.svelte.setup({})
            lspconfig.cssls.setup({})

            local jdtls_root = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
            local lombok_path = jdtls_root .. "/lombok.jar"

            lspconfig.jdtls.setup({
                cmd = {
                    "jdtls",
                    "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand(lombok_path)),
                },
            })

            vim.keymap.set({ "n", "v", "i" }, "ch", "<Nop>", { noremap = true, silent = true })

            vim.keymap.set("n", "ch", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
        end,
    },
}
