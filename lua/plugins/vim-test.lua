return {
    "vim-test/vim-test",
    config = function ()
        vim.keymap.set("n", "<F1>", ":TestNearest<CR>");
        vim.keymap.set("n", "<F2>", ":TestFile<CR>");
    end
}
