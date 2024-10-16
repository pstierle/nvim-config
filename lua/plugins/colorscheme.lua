return {
    "tomasiser/vim-code-dark",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme codedark")

        require("lualine").setup({
            options = {
                theme = "codedark",
            },
        })
    end,
}
