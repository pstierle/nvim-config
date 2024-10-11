return {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependecies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<C-p>", builtin.find_files, {})
        vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
    end 
}