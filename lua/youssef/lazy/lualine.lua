return{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local ayu_mirage = require'lualine.themes.ayu_mirage'
        require('lualine').setup{
            options = {
                theme  = ayu_mirage,
            }

        }
    end

}
