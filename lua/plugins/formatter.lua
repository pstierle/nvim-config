return {
    'stevearc/conform.nvim',
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                svelte = { "deno_fmt", "superhtml" },
                css = { "prettierd" }
            },
        })
        vim.keymap.set("n", "gf", function()
            require("conform").format({ async = true, lsp_fallback = true })
        end)
    end
}
