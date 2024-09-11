return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = {
                    light = "mocha",
                    dark = "mocha",
                },
                transparent_background = true,
            })
            vim.cmd("colorscheme catppuccin")
        end,
    },
    {
        "rose-pine/neovim",
        priority = 1000,
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = "moon",
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
     {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                terminal_colors= true,
                styles = {
                    sidebars = "dark",
                    floats = "dark",
                }
            })
        end
    },
}
