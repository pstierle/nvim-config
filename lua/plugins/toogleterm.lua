return {
    {
        "akinsho/toggleterm.nvim",
        config = true,
        cmd = "ToggleTerm",
        keys = {
            { "<C-t>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", desc = "Toggle terminal" },
        },
    },
}
