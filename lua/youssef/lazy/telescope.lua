return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            extensions = {
                file_browser = {}
            }
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>vf', builtin.vim_options, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>cdf', ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
        vim.keymap.set('n', '<leader>gf', builtin.buffers, {})
        vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>bb', builtin.builtin, {})
        vim.keymap.set('n', '<leader>csc', builtin.colorscheme, {})
    end
}
