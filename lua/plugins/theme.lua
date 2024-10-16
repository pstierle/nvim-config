return {
    "rmehri01/onenord.nvim",
    priority = 1000,
    config = function()
        require("onenord").setup({
            theme = "dark",
            borders = true,
            fade_nc = false,
            styles = {
                comments = "NONE",
                strings = "NONE",
                keywords = "NONE",
                functions = "NONE",
                variables = "NONE",
                diagnostics = "underline",
            },
            inverse = {
                match_paren = false,
            },
        })

        vim.cmd("colorscheme onenord")

        require("lualine").setup({
            options = {
                theme = "onenord",
            },
        })
    end,
}
