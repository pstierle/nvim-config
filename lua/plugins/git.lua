return {
    "sindrets/diffview.nvim",
    config = function()
        vim.keymap.set("n", "<C-g>", function()
            if next(require("diffview.lib").views) == nil then
                vim.cmd("DiffviewOpen")
            end
        end)
        vim.keymap.set("n", "<esc>", function()
            if next(require("diffview.lib").views) ~= nil then
                vim.cmd("DiffviewClose")
            end
        end)
    end,
}
