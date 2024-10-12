return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = { "go", "lua", "javascript", "bash" },

            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,

                additional_vim_regex_highlighting = false,
            },
        }
    }
}
