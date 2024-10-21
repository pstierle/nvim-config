return {
    "w0ng/vim-hybrid",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme hybrid")

        require("lualine").setup({
            options = {
                theme = "hybrid",
            },
        })
    end,
}
