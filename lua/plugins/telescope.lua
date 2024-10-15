return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            local actions = require("telescope.actions")
            local action_state = require("telescope.actions.state")
            local function open_in_new_tab(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                actions.close(prompt_bufnr)
                local file_path = selection.path
                local file_is_open = false
                for _, tab in ipairs(vim.api.nvim_list_tabpages()) do
                    local buffers = vim.fn.tabpagebuflist(tab)
                    for _, buf in ipairs(buffers) do
                        if vim.api.nvim_buf_get_name(buf) == file_path then
                            vim.api.nvim_set_current_tabpage(tab)
                            file_is_open = true
                            break
                        end
                    end
                    if file_is_open then
                        break
                    end
                end
                if not file_is_open then
                    vim.cmd("tabnew " .. file_path)
                    vim.cmd("Neotree filesystem reveal left")
                end
            end
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<CR>"] = open_in_new_tab,
                        },
                        n = {
                            ["<CR>"] = open_in_new_tab,
                        },
                    },
                },
            })
            vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
