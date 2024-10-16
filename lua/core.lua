vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set showtabline=2")
vim.cmd("set textwidth=0")
vim.cmd("set expandtab")
vim.cmd("set nowrap")

vim.opt.number = true
vim.opt.showmode = false
vim.opt.cursorline = true

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

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250

vim.keymap.set({ "n", "v", "i" }, "<C-z>", "<Cmd>u<CR>", {})
