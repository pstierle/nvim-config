return {
    "backdround/global-note.nvim",
    config = function()
        require("global-note").setup({
            filename = "global.md",
            directory = "~/nvim-notes/",
        })
        vim.keymap.set("n", "<leader>n", function()
            require("global-note").toggle_note()
        end)
    end
}
