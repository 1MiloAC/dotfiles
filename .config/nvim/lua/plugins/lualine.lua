return {

    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        --local minimap_extension = require("neominimap.statusline").lualine_default
        require('lualine').setup {}
        --extensions = { minimap_extension } }
    end

}
