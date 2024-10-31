return {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
        vim.keymap.set({ "n", "v", "i" }, "<C-d>", "<Nop>", { noremap = true, silent = true })
        vim.g.VM_maps = {
            ["Find Under"] = "<C-d>",
            ["Find Subword Under"] = "<C-d>",
        }
    end,
}
