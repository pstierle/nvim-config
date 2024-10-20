return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme catppuccin-frappe")

        require("lualine").setup({
            options = {
                theme = "catppuccin",
            },
        })
    end,
}
