return {
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>ff",
                function()
                    builtin.find_files({
                        no_ignore = true
                    })
                end,
                { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg",
                function()
                    builtin.live_grep({
                        additional_args = { "--no-ignore" }
                    })
                end,
                { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

            require("telescope").load_extension("fzf")
        end
    }
}
