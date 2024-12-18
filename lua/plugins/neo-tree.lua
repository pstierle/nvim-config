return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {},
                    never_show = {},
                },
                follow_current_file = {
                    enabled = true
                }
            },
        })
        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>", {})
    end,
}
