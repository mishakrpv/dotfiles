return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            indent = {
                char = "┊",
				tab_char = "┊",
				smart_indent_cap = true
            },
            whitespace = {
                remove_blankline_trail = true
            },
            scope = { enabled = false }
        },
        config = function(_, opts)
            require("ibl").setup(opts)
        end
    }
}
