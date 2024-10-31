vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- VIM OPTS
vim.opt.number = true
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- KEYMAPS

-- undo
vim.keymap.set({ "n", "v", "i" }, "<C-z>", "<Cmd>u<CR>", {})

-- select all
vim.keymap.set({ "n", "v" }, "<C-a>", "ggVG", { noremap = true, silent = true })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true })
